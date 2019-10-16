 (function() {
   function sliceRGB(rgb) {
     var regexp = /[0-9]{0,3}/gi;
     var re = rgb.match(regexp);
     var array = new Array();
     for (var i = 0; i < re.length; i++) {
       if (re[i] != "") {
         array.push(re[i]);
       }
     };
     return array;
   }

   function changeToNightThemeDelayForIOS8(func) {
     /interactive|complete/.test(document.readyState) ? mttChangeFlagOnIOS8 || (mttChangeFlagOnIOS8 = !0, func()) : window.setTimeout(changeToNightThemeDelayForIOS8, 1E3, func)
   }

   function changeToNightTheme() {
     changeElementsToNightStyle()
   }

   function changeThemeOnDocumentComplete(func) {
     /interactive|complete/.test(document.readyState) ? window.setTimeout(func, 1) : (document.addEventListener("readystatechange",
       function() {
         "complete" == document.readyState && (mttChangeFlagOnIOS8 || (mttChangeFlagOnIOS8 = !0, func()), document.removeEventListener("readystatechange", arguments.callee, !1))
       },
       false), mttIsIOS8 && changeToNightThemeDelayForIOS8(func))
   }

   function changeElementsToNightStyle() {
     function nextFunc(end) {
       end >= length ? (printLog("_finish_time_," + (Date.now() - mttBeginDate)), changeNightModeDidFinish()) : mttTimeoutFunc = window.setTimeout(changeElementsToNightStyleSeparate, mttDelayBaseTime + 300 * mttDelayCount, array, end, end + mttChangeStyleMaxCount, nextFunc)
     }
     mttNoRepeatImageWidthThreshold = 0.75 * window.innerWidth;
     null != mttTimeoutFunc && window.clearTimeout(mttTimeoutFunc);
     document.addEventListener("DOMNodeInserted", DOMNodeInsertedLister, false);
     var array = Array.prototype.slice.call(document.body.getElementsByTagName("*")),
       length = array ? array.length : 0;
     mttBeginDate = Date.now();
     var min = Math.min(mttChangeStyleMaxCount, length)
     changeElementsToNightStyleSeparate(array, 0, min, nextFunc);
   }

   function changeElementsToNightStyleSeparate(array, begin, end, finishFunc) {
     var beginTime = Date.now();
     for (end = Math.min(end, array.length); begin <= end; begin++) changeToNightStyle(array[begin], mttExRegExpForInsertNode);
     300 < Date.now() - beginTime ? ++mttDelayCount : 0 < mttDelayCount && --mttDelayCount;
     finishFunc(end);
   }

   function changeToNightStyle(element, exRegExpObject) {
     if (element && !(3 == element.nodeType || 8 == element.nodeType)) {
       var tagName = element.tagName.toUpperCase();
       if ((!exRegExpObject.test(tagName)) && !element.classList.contains("MTTATTRIBUTE")) {
         element.classList.add("MTTATTRIBUTE");
         if (mttTextRegExp.test(tagName)) {
           element.classList.add("MTTNightMode_changeBgColor");
           element.classList.add("MTTATTRIBUTE_Done");
         } else {
           var style = window.getComputedStyle(element, null);
           if (style) {
             var width = parseInt(style.width, 0),
               height = parseInt(style.height, 0),
               hasBgColor = mttRgbaRegExp.test(style.backgroundColor);
             var shouldChangeBorderColor = false;
             if (mttRgbLightRegExp.test(style.borderColor) || mttRgbDarkLightRegExp.test(style.borderColor)) shouldChangeBorderColor = !0;
             var eyeGreenHasBorderChangeColor = false;
             var eyeGreenNoBorderChangeColor = false;
             if (mttEyeGreenWhiteColorExp.test(style.backgroundColor)) {
               if ("none" == style.borderStyle && "0px" == style.borderRadius) {
                 eyeGreenNoBorderChangeColor = true
               } else {
                 eyeGreenHasBorderChangeColor = true
               }
             }
             var eyeGreenHeadChangeColor = false;
             if (tagName == "A") {
               if (mttEyeGreenHeadExp.test(element.parentElement.tagName)) {
                 var aryRGB = sliceRGB(style.color);
                 var standard = 32;
                 if (parseInt(aryRGB[0]) < standard && parseInt(aryRGB[1]) < standard && parseInt(aryRGB[2]) < standard) {
                   eyeGreenHeadChangeColor = true
                 }
               }
             }
             if (tagName == "INPUT") {
               element.style.borderRadius = 0
             }
             var hasGradientBgImage = !1,
               shouldRemoveBgImage = !1,
               shouldChangeBgColor = !1;
             if ("" !== style.backgroundImage && "none" !== style.backgroundImage) {
               var isLarge = 5 < element.childNodes.length,
                 hasText = "A" === tagName && 0 === element.innerText.trim().length,
                 whRate = width / height,
                 flag = "UL" === tagName;
               if (!hasText && !flag) switch (style.backgroundRepeat) {
                 case "no-repeat":
                 case "no-repeat, no-repeat":
                   flag = !mttInputRegExp.test(tagName) && width >= mttNoRepeatImageWidthThreshold && 150 > height;
                   break;
                 case "repeat":
                   flag = isLarge || 300 < width || 300 < height || 100 < width && 100 < height || 5 < whRate || 0.2 > whRate;
                   break;
                 default:
                   flag = isLarge || 300 < width || 300 < height || 150 < width && 150 < height || 4 < whRate || 0.25 > whRate
               }
               flag && (flag = !/^cover$/.test(style.getPropertyValue("-webkit-background-size")));
               mttGradientRegExp.test(style.backgroundImage) ? hasGradientBgImage = !0 : flag && (shouldRemoveBgImage = !0)
             } else if (!hasBgColor || mttRgbLightRegExp.test(style.backgroundColor) || mttWhiteRgbaRegExp.test(style.backgroundColor)) shouldChangeBgColor = !0;
             var styleClass = "",
               hasGradientBgImage = hasGradientBgImage && !(/url/.test(style.backgroundImage));
             if (hasBgColor) {
               if (hasGradientBgImage) {
                 styleClass = styleClass + " MTTNightMode_setBorder MTTNightMode_changeBgLinear"
               } else {
                 if (shouldRemoveBgImage) {
                   styleClass = styleClass + " MTTNightMode_setBorder MTTNightMode_delBgImg MTTNightMode_transparentBkg"
                 } else {
                   styleClass = styleClass + " MTTNightMode_transparentBkg"
                 }
               }
             } else {
               if (hasGradientBgImage) {
                 styleClass += " MTTNightMode_setBorder MTTNightMode_changeBgLinear"
               } else {
                 if (shouldRemoveBgImage) {
                   styleClass += " MTTNightMode_setBorder MTTNightMode_setBackground"
                 }
                 mttTransparentRegExp.test(style.backgroundColor) && (styleClass += " MTTNightMode_changeBgLinear")
               }
             }
             shouldChangeBgColor && (styleClass += " MTTNightMode_changeBgColor");
             shouldChangeBorderColor && (styleClass += " MTTNightMode_changeBorder");
             eyeGreenNoBorderChangeColor && (styleClass += " MTTEyeGreenMode_NoBorderChangeBGColor");
             eyeGreenHasBorderChangeColor && (styleClass += " MTTEyeGreenMode_HasBorderChangeBGColor");
             eyeGreenHeadChangeColor && (styleClass += " MTTEyeGreenMode_TextColor");
             styleClass += " MTTATTRIBUTE_Done";
             element.className += styleClass;
           }
         }
       }
     }
   }

   function changeNightModeDidFinish() {
     return;
     if (document.body && document.getElementById(mttPreSheetID) && !document.getElementById(mttSheetID)) {
       var styleElement = document.createElement("link");
       styleElement.rel = 'stylesheet';
       styleElement.type = 'text/css';
       styleElement.id = mttSheetID;
       styleElement.href = document.getElementById(mttPreSheetID).href;
       document.head.appendChild(styleElement);
       removeMttThemeElement(mttPreSheetID)
     }
     changeDidFinish(1)
   }

   function changeDidFinish(mode) {
     removeMttThemeElement("mtt_preload")
   }

   function DOMNodeInsertedLister(event) {
     window.setTimeout(changeInsertedDomNodeToNightStyle, 1, event.target, mttExRegExpForInsertNode)
   }

   function changeInsertedDomNodeToNightStyle(element, exRegExpObject) {
     if (element) {
       changeToNightStyle(element, exRegExpObject);
       for (var children = element.children,
           length = children ? children.length : 0, index = 0; index < length; index++) changeInsertedDomNodeToNightStyle(children[index], exRegExpObject)
     }
   }

   function DOMNodeModifiedLister(records) {
    if (window.MTTThemeTool.mttNightMode == 0) {
      return;
    }
    if (records && records.length > 0) {
      var record, item;
      for (record in records) {
        item = records[record];
        var className = item.target.className;
        if (className) {
          if (className.indexOf("MTTATTRIBUTE_Done" == -1)) {
            changeToNightStyle(item.target, mttExRegExpForInsertNode);
          }
        }


      }
    }

  }

   function printLog(obj) {
   }

   function postJSBridgeMessage(message) {
     var elementID = "MTT_NIGHT_MDOE_MSG_IFRAME";
     var element = document.getElementById(elementID);
     element || (element = document.createElement("iframe"), element.id = elementID, element.setAttribute("style", "height:0px !important; width:0px !important; border:none !important; display:none !important;"), document.body.appendChild(element));
     element.src = "mttnightmode://" + message
   }

   function removeMttThemeElement(sheetID) {
     var element = document.getElementById(sheetID);
     element && element.parentNode && element.parentNode.removeChild(element)
   }

   function changeToClassicTheme() {
     null != mttTimeoutFunc && window.clearTimeout(mttTimeoutFunc);
     document.removeEventListener("DOMNodeInserted", DOMNodeInsertedLister, false);
     for (var array = Array.prototype.slice.call(document.getElementsByTagName("*")), len = array.length, regExp = /MTTNightMode_[\s\S]*?\b|MTTEyeGreenMode_[\s\S]*?\b/g, index = 0; index < len; ++index) {
       var element = array[index];
       if (element && !(3 == element.nodeType || 8 == element.nodeType)) {
         var tag = element.tagName.toUpperCase(),
           classArray = null,
           classCount = 0;
         if (!mttExRegExp.test(tag) && element.classList.contains("MTTATTRIBUTE") && (element.classList.remove("MTTATTRIBUTE"), element.classList.remove("MTTATTRIBUTE_Done"), classArray = element.className.match(regExp)))
           if (classCount = classArray.length, 0 < classCount)
             for (var m = 0; m < classCount; m++) element.classList.remove(classArray[m])
       }
     }
     changeDidFinish(0);
   }
   if (!window.MTTThemeTool && document.head) {
     window.MTTThemeTool = window.MTTThemeTool || {};
     window.MTTThemeTool.mttNightMode = 0;
     var mttPreSheetID = "mtt_theme_pre",
       mttSheetID = "mtt_theme",
       mttThemeElement = null;
     var mttChangeFlagOnIOS8 = !1,
       mttNoRepeatImageWidthThreshold = 0,
       mttTimeoutFunc = null,
       mttBeginDate = 0,
       mttChangeStyleMaxCount = 100,
       mttDelayCount = 0,
       mttDelayBaseTime = 5,
       mttIsIOS8 = !0,
       mttRgbaRegExp = /rgba\(\s*?\d+?\s*?,\s*?\d+?\s*?,\s*?\d+?\s*?,\s*?0\s*?\)/i,
       mttTransparentRegExp = /rgba\(\s*?\d+?\s*?,\s*?\d+?\s*?,\s*?\d+?\s*?,\s*?[0-1]+(.[0-9]*)?\s*?\)/i,
       mttRgbRegExp = /rgb\(\s*?\d+?\s*?,\s*?\d+?\s*?,\s*?\d+?\s*?\)/i,
       mttRgbLightRegExp = /rgb\(\s*?2\d{2}\s*?,\s*?2\d{2}\s*?,\s*?2\d{2}\s*?\)/i,
       mttRgbDarkLightRegExp = /rgb\(\s*?1([4-9])\d\s*?,\s*?1([4-9])\d\s*?,\s*?1([4-9])\d\s*?\)/i,
       mttWhiteRgbaRegExp = /rgba\(255\, 255\, 255\,/i,
       mttGradientRegExp = /rgb|-webkit-gradient/i,
       mttExRegExp = /\bCANVAS\b|\bIMG\b|\bIFRAME\b|\bBR\b|\bSCRIPT\b|\bSTYLE\b/,
       mttExRegExpForInsertNode = /\bCANVAS\b|\bIMG\b|\bIFRAME\b|\bBR\b|\bSCRIPT\b|\bNOSCRIPT\b|\bSTYLE\b|\bMETA\b|\bLINK\b|\bTITLE\b/,
       mttInputRegExp = /\bINPUT\b|\bSELECT\b/,
       mttTextRegExp = /H[1-6]|\bP\b|\bB\b|\bSTRONG\b|\bBIG\b|\bEM\b|\bI\b|\bSMALL\b|\bSUB\b|\bSUP\b|\bSPAN\b/,
       mttEyeGreenWhiteColorExp = /rgb\s*?\(\s*?2[3-5][0-9]\s*?,\s*?2[3-5][0-9]\s*?,\s*?2[3-5][0-9]\s*?\)/i,
       mttEyeGreenHeadExp = /H[1-6]/;
     window.MTTThemeTool.injectCSS = function(isIOS8, themeMode) {
      
      if (!window.MTTNodeObserver && !!document.body)
      {
           try
           {
                var MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
                if (MutationObserver) {
                  var mo = new MutationObserver(DOMNodeModifiedLister);
                  var options = {
                    'childList': true,
                    'subtree': true,
                    'arrtibutes': true,
                    'attributeOldValue': true,
                    'attributesFilter': ['class']
                  };
                  window.MTTNodeObserver = mo;
                  window.MTTNodeObserverOptions = options;
                }

                if (!!themeMode && window.MTTNodeObserver) {
                  window.MTTNodeObserver.observe(document.body, window.MTTNodeObserverOptions);
                }
           }
           catch(err)
           {
           
           }

      }
      
       mttIsIOS8 = isIOS8;
       window.MTTThemeTool.mttNightMode = themeMode;
       if (document.head) {
         mttThemeElement = document.getElementById(mttPreSheetID);
         if (null == mttThemeElement) {
           mttThemeElement = document.createElement("link");
           mttThemeElement.rel = 'stylesheet';
           mttThemeElement.type = 'text/css';
           mttThemeElement.id = mttPreSheetID;
           mttThemeElement.href = './mtt_qb_thememode/' + themeMode + '.css';
           if (document.head.children.length > 0) {
             document.head.insertBefore(mttThemeElement, document.head.children[0]);
           } else {
             document.head.appendChild(mttThemeElement);
           }
         } else {
           mttThemeElement.href = './mtt_qb_thememode/' + themeMode + '.css';
         }
         changeThemeOnDocumentComplete(changeToNightTheme);
       }
     }
     var isCSSLinkExist = function() {
      if (document.getElementById(mttPreSheetID) != null || document.getElementById(mttSheetID) != null) {
        return true;
      }
      return false;
     }
     window.MTTThemeTool.changeTheme = function(themeMode) {
       if (0 != themeMode) {
        if (window.webkit && !isCSSLinkExist()) {
          window.MTTThemeTool.injectCSS(mttIsIOS8, themeMode);
        }
         if (window.MTTThemeTool.mttNightMode === themeMode) {
           changeDidFinish(themeMode);
         } else {
           window.MTTThemeTool.mttNightMode = themeMode;
           var sheetEle = document.getElementById(mttSheetID);
           if (null == sheetEle) {
             sheetEle = document.getElementById(mttPreSheetID);
           }
           sheetEle.href = './mtt_qb_thememode/' + themeMode + '.css';
         }

         if (window.MTTNodeObserver && window.MTTNodeObserverOptions) {
            window.MTTNodeObserver.observe(document.body, window.MTTNodeObserverOptions);
          }

          if (!!themeMode && window.MTTNodeObserver) {
            window.MTTNodeObserver.observe(document.body, window.MTTNodeObserverOptions);
          }
        
       } else {
         removeTheme();
       }
     }
     window.MTTThemeTool.removeTheme = function() {
       window.MTTThemeTool.mttNightMode = 0;
       if (window.MTTNodeObserver) {
        window.MTTNodeObserver.disconnect();
      }
       var sheetEle = document.getElementById(mttSheetID);
       if (null == sheetEle) {
         sheetEle = document.getElementById(mttPreSheetID);
       }
       sheetEle.href = './mtt_qb_thememode/0.css';
     }
     window.MTTThemeTool.currentTheme = function() {
       return window.MTTThemeTool.mttNightMode;
     }
   }
 })();
