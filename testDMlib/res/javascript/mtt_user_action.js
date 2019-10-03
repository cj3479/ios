(function() {
function action() {
  var actionId = '$$ACTIONID';
  if(actionId != "") {
    var nodes = document.evaluate(actionId, document, null,
                                  XPathResult.FIRST_ORDERED_NODE_TYPE, null);
    var node = nodes.singleNodeValue;
    if (node == null)
      return;
    if(node.tagName == "OPTION") {
      var parent = node.parentNode;
      parent.value = node.value;
      var evt = document.createEvent("HTMLEvents");
      evt.initEvent("change",false,true);
      parent.dispatchEvent(evt);
    } else {
      node.click();
    }
  }
}
action();
})()