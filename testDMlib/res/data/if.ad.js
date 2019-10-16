(function(){

	//js

var MTT_A_HOST = window.location.host;       //页面domain
var MTT_A_ID = new Date().getTime();
var MTT_A_Origin = window.location.origin;
// if(window.location.href == "about:blank") return ;
var MTT_A_CSS = null;

var MTT_A_FunctionSet = {};

function mtt_handle_message(e)
{
	var o;
	if(typeof e.data == 'object')
	{
		o = e.data;
	}
	else
	{
		if(typeof e.data != 'string') return ;
		try{
			o = JSON.parse(e.data);
		}catch(err) {
			return ;
		}
	}
	
	try{
		var isAll = false;
		if(typeof o.mttorigin == 'string') {
			if(o.mttorigin == '*') 
				isAll = true;
		}
		if((!isAll) && (o.tag != MTT_A_ID)) return ;

	}catch(err) {
		return ;
	}
    

    var fun_param = o.func_param;
    if(MTT_A_FunctionSet[o.func])
    {
        MTT_A_FunctionSet[o.func](fun_param);
    }
}

if (window.addEventListener) {
    //为窗口注册message事件，并绑定监听函数
    window.addEventListener('message', mtt_handle_message, false);
}else {
    window.attachEvent('message', mtt_handle_message);
}


function mtt_message_obj(param,func,callback){
	var o = new Object();
	o.param = param;
	o.funName = func;
	o.callback = callback;
	o.origin = MTT_A_Origin;
	o.tag = MTT_A_ID;
	return o;
}



function mtt_get_hiderules(){
	var mtt_message_getter = mtt_message_obj(MTT_A_HOST,'getHideRules','mtt_handle_hiderules');
	//不是QQ域名才开始
	if (MTT_A_HOST.indexOf("qq.com") == -1)
	{
		window.webkit.messageHandlers.adFilterHandler.postMessage(mtt_message_getter);
	} 
}

function mtt_a_removerules(){
	var mtt_message_getter = mtt_message_obj(MTT_A_HOST,'removeElement','mtt_handle_remove');
	//不是QQ域名才开始
	if (MTT_A_HOST.indexOf("qq.com") == -1)
	{
		window.webkit.messageHandlers.adFilterHandler.postMessage(mtt_message_getter);
	} 
}

function mtt_addcss(css){
    var head = document.getElementsByTagName('head')[0];
    var s = document.createElement('style');
    s.setAttribute('type', 'text/css');
    if (s.styleSheet) {   // IE
        s.styleSheet.cssText = css;
    } else {                // the world
        s.appendChild(document.createTextNode(css));
    }
    head.appendChild(s);
}

if (typeof String.prototype.endsWith !== 'function') {
    String.prototype.endsWith = function(suffix) {
        return this.indexOf(suffix, this.length - suffix.length) !== -1;
    };
}

function mtt_handle_hiderules(arr)
{
	var css ='';
	for(var i = 0 ;i < arr.length;i++)
	{
		var sel = arr[i];
		css += sel + ',';
	}
	if(css.endsWith(','))
	{
		css = css.substring(0,css.length-1);
	}
	css += '{display:none !important}';
	mtt_addcss(css);
    MTT_A_CSS = arr;
}

function mtt_handle_remove(arr) {
	for(var i = 0; i <arr.length;i++) {
		var sel = arr[i];
		var l = document.querySelectorAll(sel);
		l.forEach(function(node){
			if (node) {
				node.parentNode.removeChild(node);
			}
		});
	}
}

function mtt_a_onload(){
	if(MTT_A_CSS)
	{
		mtt_handle_remove(MTT_A_CSS);
	}
	else
	{
		//post message.
		mtt_a_removerules();
	}
}

MTT_A_FunctionSet['mtt_handle_hiderules'] = mtt_handle_hiderules;
MTT_A_FunctionSet['mtt_handle_remove'] = mtt_handle_remove;

if(window.addEventListener) {
	window.addEventListener('load', mtt_a_onload);
}

mtt_get_hiderules();

 
 })();
