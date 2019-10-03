/* ***** BEGIN LICENSE BLOCK *****
 * Version: NPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Netscape Public License
 * Version 1.1 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://www.mozilla.org/NPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is JavaScript for Wireless Markup Language emulation
 *
 * Contributor(s):
 *      Raoul Nakhmanson-Kulish <manko@zhurnal.ru>
 *      Matthew Wilson <matthew@mjwilson.demon.co.uk>
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or 
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the NPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the NPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */
 
 // global variable. 
var gSkipPreReadingFlag = true;

/**
 * Extract a value from the document. Expects to find the value in either
 * an "input" or "select" element.
 * @param val Element ID to look for in document
 * @param mode "href" or "value". If mode is "href", URL-escapes the values,
 * and separates multiple select values by "name=". If mode is "value",
 * performs no URL-escaping, and separates * multiple select values by ",".
 * @param name Parameter name used in constructing multiple select values
 * when the mode is "href". Unused otherwise.
 */
function nsWMLgetValue(val,mode,name) {
    var valSrcElement = self.document.getElementById("__wmlbrowser_" + val);
    if (valSrcElement) {
        switch(valSrcElement.nodeName.toLowerCase()) {
            case "input":
                if (mode == "href") {
                    return encodeURIComponent(valSrcElement.value);
                } else {
                    return valSrcElement.value;
                }
            case "select":
                var retVal = "";
                for (var i = 0; i < valSrcElement.options.length; i++) {
                    if (valSrcElement.options[i].selected) {
                        if (retVal!="") {
                            retVal+= (mode == "value") ? "," : ( "&" + name + "=" ) ;
                        }
                        if (mode == "href") {
                            retVal += encodeURIComponent(valSrcElement.options[i].value);
                        } else {
                            retVal += valSrcElement.options[i].value;
                        }
                    }
                }
                return retVal;
        }
    } else return "";
}

/**
 * Convert a value according to the allowed escapings noesc (short form 
 * n), escape (e), and unesc (u).
 */
function nsWMLescape (str, escaping) {
    if (escaping.toLowerCase() == ":escape" || escaping.toLowerCase() == ":e") {
        return encodeURIComponent(str);
    } else if (escaping.toLowerCase() == ":unesc" || escaping.toLowerCase() == ":u") {
        return decodeURIComponent(str);
    } else {
        // noesc or mis-understood escaping
        return str;
    }
}

function nsWMLreplaceValues(str,mode) {
    mode = (mode) ? mode : "href";

    // Match either:
    // an optional = character (only used when mode=href)
    // $*( followed by a variable name optionally followed by an escaping option and then )
    // [NB ( can be replace by %28 and ) by %29 for FF 3.6)
    // or
    // $ followed by repeated alpha-numeric characters
    var matcher = /(=?)(?:(\$)?\$(?:\(|%28)(.*?)(:noesc|:n|:escape|:e|:unesc|:u)?(?:\)|%29))|(\$)?\$([\w\d]+)/ig;
    str = str.replace
        (matcher,
         function (lastMatch, s1, s2, s3, s4, s5, s6) {

             // Skip this match if it is has $$
             if (s2 == "$" || s5 == "$") {
                 return lastMatch;
             } 

             // s1 is the opening equals sign, if it is present
             var optionalEquals = (s1 == undefined ? "" : s1);
             // valName is the name of part of $(name) or $(name:noesc) or $name
             var valName     = (s3 == "" || s3 == undefined) ? s6 : s3;
             // valEscaping is the noesc part of $(name:noesc)
             var valEscaping = s4 == undefined ? "" : s4;
             // If we are constructing a URL of the form
             // http://domain/path/file?parameter=$value, then extract the
             // parameter name ("parameter" in the example above), so that it can
             // be used to build up the URL if there is a multiple select element
             var valFormName = valName;
             if (mode == "href" && optionalEquals == "=") {
                 var allowedNameChars = /(\w|\.|-|%[\dA-Fa-f]{2})+$/;
                 var namesArray = allowedNameChars.exec(RegExp.leftContext);
                 if (namesArray.length) valFormName = namesArray[0];
             };
            var valValue = (valName != "") ? nsWMLgetValue(valName,mode,valFormName) : "";
            valValue = nsWMLescape (valValue, valEscaping);

            return (optionalEquals + valValue);
         } );

    // Replace $$ with $
    matcher = /\$\$/;
    while (str.match (matcher)) {
        str = str.replace (matcher, "$");
    }

    return str;
}

function nsWMLgetVariableElement(str) {

    // Match either:
    // an optional = character (only used when mode=href)
    // $*( followed by a variable name optionally followed by an escaping option and then )
    // [NB ( can be replace by %28 and ) by %29 for FF 3.6)
    // or
    // $ followed by repeated alpha-numeric characters
    var matcher = /(=?)(?:(\$)?\$(?:\(|%28)(.*?)(:noesc|:n|:escape|:e|:unesc|:u)?(?:\)|%29))|(\$)?\$([\w\d]+)/ig;
    var res = matcher.exec(str);
    if (res){
        var valName = (res[3] == "" || res[3] == undefined) ? res[6] : res[3];
        var valSrcElement = self.document.getElementById("__wmlbrowser_" + valName);

        return valSrcElement;
    }

    return null;
}

function nsWMLcheckSelect(selectElement) {
    var inputIvalueElement = selectElement.nextSibling;
    while (inputIvalueElement && inputIvalueElement.nodeType != 1) {
        inputIvalueElement = inputIvalueElement.nextSibling
    }
    if (inputIvalueElement &&
                inputIvalueElement.nodeName.toLowerCase() == "input" &&
                inputIvalueElement.className == "ivalue") {
        var iValue = "";
        for (var i = 0; i < selectElement.options.length; i++) {
            if (selectElement.options[i].selected) {
                if (iValue != "") iValue += ",";
                iValue += i
            }
        }
        inputIvalueElement.value = iValue
    }

    for (var i = 0; i < selectElement.options.length; i++) {
        if (selectElement.options[i].selected) {
            var events = ['onclick', 'onpick'];
            for (var j = 0; j < events.length; j++) {
                var script = selectElement.options[i].attributes[events[j]];
                if (script != null && script != undefined)
                {
                    eval(script.value);
                    break;
                }
            }
            break;
        }
    }      
}

function nsWMLselectPickItem(optionId)
{
    var optionForm = document.getElementById(optionId);
    if (optionForm){
        nsWMLcheckForm (optionForm);
    }
}

function nsWMLDisableSelectedCard () {
    /* TODO Get all div elements which are child of body, not just
    all div elements */
    var cards = document.getElementsByTagName ("div");
    for (var ix=0; ix<cards.length; ix++) {
        var card = cards.item(ix);
        if (card.getAttribute ("class") == "card selectedcard" || 
            card.getAttribute ("class") == "card") {
            card.setAttribute ("class", "card deselectedcard");
        }
    }
}

function nsWMLSelectCardByID (id) {
    try {
        var aryDiv = document.body.getElementsByTagName('div');
        for (var i=0; i<aryDiv.length; i++){
            if (aryDiv[i].getAttribute('class') == 'card selectedcard' || aryDiv[i].id != id)
                continue;

            nsWMLSelectCard(aryDiv[i]);
        }
    } catch (e) {
        window.console.log(e);
    }
}

function nsWMLSelectCard (tag) {
    try{
        if (tag == undefined || tag == null)
            return;
        tag.setAttribute ("class", "card selectedcard");
    }
    catch (e) {
        window.console.log(e);
    }
}

function nsWMLgetSelectedCard(){
    var cards = document.getElementsByTagName ("div");
    for (var ix=0; ix<cards.length; ix++) {
        var card = cards.item(ix);
        if (card.getAttribute ("class") == "card selectedcard") {
            return card;
        }
    }
}

/**
 * Called before a link is loaded.
 * Processes any variables in the link URL.
 * Disables any selected cards in the current document.
 * If the link is local, enables the destination card.
 */
function nsWMLcheckLink(linkElement) {
    // About to load a new link, so disable any selected cards

    /* TODO create and use 'originalHref' to avoid memory problems.
    Not before there's a testcase though. */
    if (!linkElement.getAttribute("orighref")){
        // keep orignal href for history.back() action.
        linkElement.setAttribute("orighref", linkElement.href);
    }
    // use orignal url covered href 
    linkElement.href = linkElement.getAttribute("orighref");
    linkElement.href = nsWMLreplaceValues(decodeURIComponent(linkElement.href), "href");

    // Check for local link (within document).
    // TODO check all the possible ways to express this
    var current = document.location.href;
    // Replace fragment ids
    current = current.replace (/#.*/, "");

    var target = current + "#";
    // Make the target card selected (if it exists)
    // TODO what happens if the link is to the same page but doesn't have a fragid?
    if (linkElement.href.substring(0,target.length) == target) {
        var id = linkElement.href.substring(1+linkElement.href.lastIndexOf("#"));
        nsWMLSelectCardByID (id);
    }

    return true;
}

function nsWMLcheckForwardAndBack(fromElement) {
    var current = document.location.href;
    if (
        current.indexOf("__event_auto_redirect_=1")==-1 &&
        fromElement.getAttribute["__event_auto_redirect_"] == undefined){
        fromElement.setAttribute["__event_auto_redirect_"] = 1;
        nsWMLcheckForm(fromElement, true);
    }
}

function nsWMLresetForms() {
    var inputsArray=document.getElementsByTagName("input");
    for (var i = 0; i < inputsArray.length; i++) {
        inputsArray[i].value = inputsArray[i].defaultValue;
    }
    var selectsArray=document.getElementsByTagName("select");
    for (var i = 0; i < selectsArray.length; i++) with (selectsArray[i]) {
        for (var j = 0; j < options.length; j++) {
            options[j].selected = options[j].defaultSelected;
        }
    }
}

function nsWMLaddVariableToUrl(url, name, value) {
    var flag1 = url.indexOf('?');
    var flag2 = url.indexOf('#');

    var startIdx = flag1 >= 0 ? flag1 : flag2;
    var anchor = "";
    var concat = "?";
    var replaceFlag = false;

    if (flag2 > flag1){         // # after ?
        anchor = url.substring(flag2);
        url = url.substring(0, flag2);
    }

    if (flag1 >= 0){
        concat = '&';

        // check variable name
        var nameLen = encodeURIComponent(name).length;
        var checkStartPos = url.indexOf(encodeURIComponent(name)+'=');
        if (checkStartPos >= 0){
            var endPos = url.indexOf("&", checkStartPos+nameLen);
            if (endPos == -1){
                endPos = url.length;
            }
            url = url.substring(0, checkStartPos + nameLen + 1) + encodeURIComponent(value) + url.substr(endPos);
            replaceFlag = true;
        }
    }

    if (!replaceFlag){
        url += concat + encodeURIComponent(name) + '=' + encodeURIComponent(value)
    }
    url += anchor;
    
    return url;     
}

/**
 * Called before form submission.
 * Manipulate the form's action (target URL) to replace any variables
 * with their values.
 * Iterate over all form fields, replacing any variables with their values.
 * For a GET form only, construct the URL of the target by appending all
 * form field values. (It would be nice if this weren't necessary, but
 * HTML and WML form submission behave differently when the 'action' is
 * a URL of the form url?foo=bar. WML form submission should include the foo
 * value, HTML form submission does not.)
 */
function nsWMLcheckForm(formElement, isForcePost) {
    var methodIsPost =
          (formElement.getAttribute("method") != undefined &&
           formElement.getAttribute("method").toLowerCase() == "post");

    // Start with a fresh copy of the form's "action", by fetching it from
    // "origaction". (Otherwise, after submitting a form and then going back,
    // the originally-submitted form values would still be present.)
    formElement.setAttribute ("action", nsWMLreplaceValues(formElement.getAttribute("origaction"), "href"));
    try {
        var action = "";
        var origAction = decodeURIComponent(formElement.getAttribute ("action"));
        var anchor = "";
        var actionUrl = "";
        var bPageJump = false;

        if (origAction.length == 0){
            origAction = location.href;
        }
        anchor = actionUrl = origAction;

        // process orignal variables
        var variables = getOrignalUrlVariables (origAction);

        // process anchor
        if (anchor.indexOf('#')>=0){
            anchor = anchor.substring(anchor.indexOf('#')+1);
            if (anchor.indexOf('?')>=0)
            {
                anchor = anchor.substring(0, anchor.indexOf('?'));
            }
        }
        else{
            anchor = "";
        }

        // process action url
        if (actionUrl.indexOf('#')>=0){
            actionUrl = actionUrl.substring(0, actionUrl.indexOf('#'));
        }
        if (actionUrl.indexOf('?')>=0){
            actionUrl = actionUrl.substring(0, actionUrl.indexOf('?'));
        }        

        var aryRecordedINameElement = {};
        for (var i = 0; i < formElement.elements.length; i++) {
            if (formElement.elements[i].type == "hidden" && formElement.elements[i].name &&
                 aryRecordedINameElement[formElement.elements[i].name] != true) {
                formElement.elements[i].name  = nsWMLreplaceValues(formElement.elements[i].name,"value");
                if (formElement.elements[i].getAttribute("origvalue"))
                {
                    formElement.elements[i].value = nsWMLreplaceValues(formElement.elements[i].getAttribute("origvalue"),"value");
                    // compatible selected index
                    var eleSelect = compatibleSelectiName(formElement.elements[i], formElement);
                    if (eleSelect != null){
                        aryRecordedINameElement[eleSelect.name] = true;
                    }
                }
                if (!methodIsPost) {
                    variables[formElement.elements[i].name] = formElement.elements[i].value;
                }
                bPageJump = true;
            }
        }

        for (var varName in variables){
            action += '&' + encodeURIComponent(varName) + "=" + encodeURIComponent(variables[varName]);
        }
        if (action.length > 0){
            action = '?' + action.substring(1);
        }

        // add anchor
        if (anchor.length > 0)
        {
            action += "#"+anchor;
        }

        if (actionUrl.length > 0){
            action = actionUrl + action;
        }
        
    } catch (e) {
        window.alert ("Problem in wmlbrowser extension processing: " + e);
    }

    // stop already running timer
    if (g_wmlBrowser["timer"])
        clearTimeout(g_wmlBrowser["timer"]);

    // For a GET form, we simply change our location, bypassing HTML form submission
    if (!methodIsPost) {
        location.href = action;
    }
    else
    {
        if (isForcePost)
            formElement.submit();
    }
    return methodIsPost;
}

function getOrignalUrlVariables (url) {
    var variables = {};
    // del chars before ?
    if (url.indexOf('?') >= 0)
    {
        url = url.substring(url.indexOf('?')+1);
    }
    else
    {
        return variables;
    }

    // del chars after #
    if (url.indexOf('#') >= 0)
    {
        url = url.substring(0, url.indexOf('#'));
    }

    if (url.length == 0)
        return variables;

    var aryVariablesStr = url.split('&');
    for (var i = 0; i < aryVariablesStr.length; i++) {
        var aryKV = aryVariablesStr[i].split('=');
        variables[aryKV[0]] = aryKV.length >= 2 ? aryKV[1] : "";
    }

    return variables;
}

function compatibleSelectiName(currentElement, formElement){
    var valueSrcElement = nsWMLgetVariableElement(currentElement.getAttribute("origvalue"));
    if (valueSrcElement && valueSrcElement.tagName == "SELECT" && valueSrcElement.getAttribute("iname"))
    {
        // window.console.log("process select iname. Current selected:" + valueSrcElement.selectedIndex);
        var inameName = valueSrcElement.getAttribute("iname").replace("__wmlbrowser_", "");
        for (var j = 0; j < formElement.elements.length; j++) {
            if (formElement.elements[j].name == inameName)
            {
                // bFormInputExists = true;
                formElement.elements[j].value = valueSrcElement.selectedIndex + 1;
                return formElement.elements[j];
            }
        }
    }

    return null;
}

// TODO multiple onevents, one timer per card
var g_wmlBrowser = {};
g_wmlBrowser["onevents"] = {};  // record events

function nsWMLStartTimer () {
    // Timer values are specified in tenths of a second; parameters to
    // setTimeout are specified in ms
    try{

        var onevents = g_wmlBrowser["onevents"];
        for (var eleID in onevents)
        {
            var ele = document.getElementById(eleID);
            if (ele)
            {
                var card = nsWMLFindCurrentCardWithElement(ele.parentNode);

                if (card && card.className.indexOf("selectedcard") >= 0){
                    // window.console.log("will start timer. action:"+onevents[eleID].action);
                    g_wmlBrowser["timer"] = window.setTimeout (function(){nsWMLTimerExpired(eleID, onevents[eleID].action)}, onevents[eleID].delay * 100);        
                }            
            }
        }

    }
    catch(e){

    }
    
}

function nsWMLTimerExpired (target, action) {
    var timerSetting = g_wmlBrowser["onevents"][target];
    if (timerSetting && timerSetting.execflag !== true)
    {
        // window.console.log("timeout, execute:" + target + " -- " + timerSetting.action );
        timerSetting.execflag = true;
        switch (timerSetting.action)
        {
            case "go":
            case "refresh":
                var form = document.getElementById (target);
                nsWMLcheckForm(form);
                break;

            case "prev":
                window.history.back();
                break;


            default:
                // window.console.log("no action process!");
                break;
        }    
    }
}

function nsWMLRegisterTimer (target, action, delay) {
    g_wmlBrowser["onevents"][target] = {'action':action, 'delay':delay};
}

function nsWMLFindCurrentCardWithElement(e) {

    var currCard = null;

    while (e && (e.tagName != "BODY")){
        if (e.tagName == "DIV" && e.className.indexOf("card")==0)
        {
            currCard = e;
            break;
        }
        e = e.parentNode;
    }
    return currCard;
}

function nsWMLcheckIsCardDiv(divTag) {
    try{

        var className = divTag.className;
        if (className == "card" || className.substring(0, 5) == "card ")
        {
            return true;
        }    

    }
    catch(e){
        window.console.log(e);
    }

    return false;
}

function nsWMLFindFirstCard() {
    var aryDiv = document.getElementsByTagName ("div");
    for (var i=0; i<aryDiv.length; i++)
    {
        if (nsWMLcheckIsCardDiv(aryDiv[i]))
        {
            return aryDiv[i];
        }
    }

    return undefined;
}

function nsWMLCardCount() {
    var aryDiv = document.getElementsByTagName ("div");
    var iCount = 0;
    for (var i=0; i<aryDiv.length; i++)
    {
        if (nsWMLcheckIsCardDiv(aryDiv[i])){
            iCount ++;
        }
    }

    return iCount;    
}

/**
 * return parent node contain special text's & passwrod's input 
 */
function nsWMLFillFormToPasswordInputWithFindParentEle(txtInput, pwdInput){
    var pElement = txtInput.parentNode;
    var bFlag = false;
    while (pElement && pElement.tagName != 'BODY'){
        var inputs = pElement.getElementsByTagName('input');
        for (var k=0; k<inputs.length; k++){
            if (pwdInput == inputs[k]){
                bFlag = true;
                break;
            }
        }

        if (bFlag){
            break;
        }

        pElement = prevTextInput.parentNode;
    }

    return pElement;
}

/**
 * support webview form save & fill
 */
function nsWMLFillFormToPasswordInput(){
    try{
        // each all inputs to find type isequal 'password'
        var aryInputs = document.getElementsByTagName ("input");
        for (var i=0; i<aryInputs.length; i++){
            if (aryInputs[i].type == 'password' && aryInputs[i].form == null)
            {
                // find prev text input in same form
                var prevTextInput = null;
                for (var j=i-1; j>=0; j--){
                    if (aryInputs[j].type == 'text' && aryInputs[j].form == null){
                        prevTextInput = aryInputs[j];
                        break;
                    }
                }

                if (prevTextInput != null){

                    // find parent node contain text & password
                    var parentEle = nsWMLFillFormToPasswordInputWithFindParentEle(prevTextInput, aryInputs[i]);
                    if (parentEle){

                        var newForm = document.createElement('form');
                        newForm.method = 'post';

                        // move parent node in form node
                        while (parentEle.childNodes.length>0){
                            newForm.appendChild(parentEle.childNodes[0]);
                        }
                        parentEle.appendChild(newForm);
                    }
                }
            }
        }

    }
    catch(e){
        window.console.log(e);
    }
}

/**
 * because template node with card node same level. So, use script move to current selected card on loading.
 */
function nsWMLApplyTemplate(){
    try{
        var tmpl = document.getElementsByTagName('template')[0];
        if (tmpl){
            var card = nsWMLgetSelectedCard();
            // move node in card
            card.appendChild(tmpl);
        }        
    }
    catch(e){
        window.console.log(e);
    }
}

/**
 * Page loading & back events("onpopstate"). 
 *
 * 1.find & set current card to visibled
 * 2.fill form if password is exists and no form tag
 * 3.apply template to current selected card
 * 4.start timer with 'onevent', 'timer' evnents
 */
function nsWMLOnLoad () {
    
    var href = document.location.href;
    var card = undefined;
    if (href.indexOf ("#") > 0) {
        var fragment = href.substring (1+href.indexOf("#"));
        card = document.getElementById (fragment);
    } else {
        // First card in form
        card = nsWMLFindFirstCard();
    }

    var cardCount = nsWMLCardCount();
    nsWMLFillFormToPasswordInput();

    if (card != undefined) {
        if (cardCount > 1) {
            nsWMLDisableSelectedCard();
            nsWMLSelectCardByID(card.id);
            // nsWMLSelectCard(card);
        }
        else
        {
            nsWMLSelectCard(card);
        }
        nsWMLApplyTemplate();
        nsWMLStartTimer();
    }
}
