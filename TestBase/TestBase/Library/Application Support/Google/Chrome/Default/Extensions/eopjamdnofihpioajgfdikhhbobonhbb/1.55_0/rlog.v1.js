// 2016-02-04 17:33
var _rlog=_rlog||[];!function(a,b,c,d,e){function f(a,b){K.pid&&1!=K.ispvt&&(K.ispvt=1,K.cat="pageview",g(u()+b,a))}function g(a,b){var c=["_npid="+K.pid,"_ncat="+K.cat,t(),a];K.post.length&&c.push(s(K.post)),h(c.join("&"),b)}function h(a,b){var c=new Image;c.onload=c.onerror=function(){b&&b()},c.src=J+"/rlog.php?"+a,c=null}function i(b){var c=b||a.event,d=c.target||c.srcElement;d.href&&O.push(["_trackCustom","click",d.href])}function j(c){c=c||a.event;for(var d=c.target?c.target:c.srcElement,e=b.body;d!=e;d=d.parentNode||e)if(1===d.nodeType&&d.disabled!==!0){var f=d.getAttribute("data-rlog");f&&O.push(["_trackEvent",f])}}function k(){return{pid:"",cat:"",post:[],ispvt:0,pvcb:[],autopv:!0}}function l(a){return"[object Array]"===Object.prototype.toString.call(a)}function m(a,b){var c;for(c in a)a.hasOwnProperty(c)&&b(c,a[c])}function n(){return"https:"==c.protocol?"https:":"http:"}function o(a,c){return x&&"mousedown"==a?void b.addEventListener("touchstart",c,!1):void(b.addEventListener?b.addEventListener(a,c,!1):b.attachEvent("on"+a,c))}function p(a,c){return x&&"mousedown"==a?void b.removeEventListener("touchstart",c,!1):void(b.removeEventListener?b.removeEventListener(a,c,!1):b.detachEvent("on"+a,c))}function q(a,b){var c=new Date;c.setTime(c.getTime()+63072e6),document.cookie=a+"="+b+";expires="+c.toGMTString()+";path=/;domain="+I}function r(a){for(var b=document.cookie,c=a+"=",d=b.length,e=0;d>e;){var f=e+c.length;if(b.substring(e,f)==c){var g=b.indexOf(";",f);return-1==g&&(g=d),unescape(b.substring(f,g))}if(e=b.indexOf(" ",e)+1,0==e)break}return-1}function s(a){l(a)||(a=[]);var b,c,e,f=[];for(b=0,c=a.length;c>b;++b)e=a[b],l(e)&&f.push(e[0]+"="+d(e[1]));return f.join("&")}function t(){var a=(new Date).getTime();return b.cookie="___rl__test__cookies="+a,F=r("OUTFOX_SEARCH_USER_ID_NCOO"),-1==F&&r("___rl__test__cookies")==a&&(F=2147483647*Math.random(),q("OUTFOX_SEARCH_USER_ID_NCOO",F)),E=r("P_INFO"),E=-1==E?"NULL":E.substr(0,E.indexOf("|")),["_ncoo="+F,"_nssn="+E,"_nver="+y,"_ntms="+a].join("&")}function u(){if(C="-",self.screen)C=screen.width+"x"+screen.height;else if(self.java){var e=java.awt.Toolkit.getDefaultToolkit(),f=e.getScreenSize();C=f.width+"x"+f.height}var g=new Date(b.lastModified);D=g.getTime()/1e3;var h=a.navigator;A=h&&h.javaEnabled()?1:0,z=b.characterSet||b.charset||"-",z=z.toLowerCase(),B=d(b.referrer),H=d(c.href),G=c.hash?d(c.hash.substring(1)):"";var h=["_nref="+B,"_nurl="+H,"_nres="+C,"_nlmf="+D,"_njve="+A,"_nchr="+z,"_nfrg="+G];return h.join("&")}function v(a){var d=a?4:3,e="res:"===c.protocol?"":b.domain,f=e.split("."),g=f.length,h=/^\d+$/g;if(h.test(f[g-1]))return e;if(f.length<d)return"."+e;var i,j=["com","net","org","gov","co"],k=!1;for(i=0;i<j.length;i++)f[g-2]==j[i]&&(k=!0);for(var l=k?d:d-1,m=[];l;)m.push(f[g-l]),l--;return"."+m.join(".")}if(!a.__rl_event){var w=navigator.userAgent.toLowerCase(),x=/(mobile|iphone|ipod|blackberry)/.test(w),y="1.2.0",z="",A=0,B="",C="",D=0,E="NULL",F="NULL",G="",H="",I=v(),J=(v(!0),n()+"//rlogs.youdao.com"),K=k(),L={_default:K},M={},N=a._rlog,O=a._rlog={};O.push=function(a){var b=a[0].split(".");fn=b.pop(),b=b.join("_"),b||(b="_default"),K=L[b]||(L[b]=k()),M[fn].apply(this,a.slice(1))},M._setAccount=function(a){a&&(K.pid=a)},M._setAutoPageview=function(a){K.autopv=a},M._addPost=function(a,b){M._removePost(a),K.post.push([a,b])},M._onPageViewFinished=function(a){K.pvcb.push(a)},M._trackCustom=function(a,b,c){if(K.pid){K.cat=a;var e;e=l(b)?s(b):"_nhrf="+d(b),g(e,c)}},M._trackEvent=function(a,b){M._trackCustom("event",a,b)},M._trackPageview=function(a){if(!K.ispvt||"ido"===a){var b=K;f(function(){for(var a;a=b.pvcb.shift();)try{a()}catch(c){}b.ispvt=2},l(a)&&a.length?"&"+s(a):"")}},M._removePost=function(a){if(!a)return void(K.post=[]);for(var b=K.post,c=0,d=b.length;d>c;c++)if(b[c]&&b[c][0]==a)return b.splice(c,1),c},a.__rl_event=function(a,b){O.push(["_trackCustom","event",a,b])},K.pid=a.__rl_npid||"",K.post=a.__rl_post||[],K.autopv="undefined"==typeof __rl_pageview?!0:!!a.__rl_pageview;var P=function(){var a,b=c.search.replace(/^\?/,"").split("&"),d={},f=0;for(f=0;f<b.length;f++)a=b[f],a&&(a=a.split("="),d[a[0]]=void 0===a[1]?null:e(a[1]));return d}();P.vendor&&M._addPost("vendor",P.vendor),P.keyfrom&&M._addPost("keyfrom",P.keyfrom),function(){var a=c.hash;if(a){a=a.replace(/^#/,"").split("&");var b,d,f;for(d=0,f=a.length;f>d;d++)b=a[d],b&&(b=b.split("="),M._addPost(b[0],e(b[1]||"NULL")))}}(),function(){try{if(!N)return;for(var a=0,b=N.length;b>a;a++)O.push(N[a]);N=null}catch(c){}}(),m(L,function(a,b){b.autopv&&O.push([a+"._trackPageview"])}),o("mousedown",j),function(){var a=function(){O.push(["_trackEvent","first-touch"]),p("touchstart",a)};o("touchstart",a)}(),a.__rl_click&&o("click",i)}}(window,document,location,encodeURIComponent,decodeURIComponent);