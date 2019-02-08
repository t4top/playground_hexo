//-- Helper functions --//

function $(id) {
  return document.getElementById(id);
} 

function addClass(obj, cls) {
  if (obj) {
    var arr = obj.className.split(" ");
    if (-1 == arr.indexOf(cls)) {
      obj.className += " " + cls;
    }
  }
}

function removeClass(obj, cls) {
  if (obj) {
    var re = new RegExp("\\s*\\b" + cls + "\\b", 'g');
    obj.className = obj.className.replace(re, "");
  }
}

function createCORSRequest(method, action) {
  var xhr = new XMLHttpRequest();
  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari
    xhr.open(method, action, true);
  } else if (typeof XDomainRequest != "undefined") {
    // XDomainRequest for IE
    xhr = new XDomainRequest();
    xhr.open(method, action);
  } else {
    // CORS not supported
    xhr = null;
  }
  return xhr;
}

function isValidEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i;
  return re.test(email);
}

function addListener(obj, evt, callback) {
  if (obj) {
    if (typeof(obj.addEventListener) != "undefined") {
      obj.addEventListener(evt, callback, false);
    } else if (typeof obj.attachEvent != "undefined") {
      obj.attachEvent(("on" + evt), callback);
    } else {}
  }
}

//-- Business logic --//

window.onload = function(e) { 
  addListener($("btn_submit"), "click", function(e) {
    event.preventDefault();
    if (validateInput()) sendData();
    return false;
  });
  addCustomValidity($("name"), "Name is required");
  addCustomValidity($("message"), "Message is required");
  addCustomValidity($("email"), "Email is not valid");
};

function addCustomValidity(obj, sError) {
  if (obj) {
    addListener(obj, "keyup", function(e) {
      if (("" === obj.value.trim()) ||
         (("email" == obj.type.toLowerCase()) && (!isValidEmail(obj.value.trim())))) {
        obj.setCustomValidity(sError);
        addClass(obj, "input_error");
      } else {
        obj.setCustomValidity("");
        removeClass(obj, "input_error");
      }
    });  
  }
}

function validateInput() {
  var rtn = true;
  var wrong_tags = [];
  var sName = $("name").value.trim();
  var sMessage = $("message").value.trim();
  var sEmail = $("email").value.trim();

  if ("" === sName) {
    wrong_tags.push("name");
    rtn = false;
  }
  if ("" === sMessage) {
    wrong_tags.push("message");
    rtn = false;
  }
  if (("" === sEmail) || (!isValidEmail(sEmail))) {
    wrong_tags.push("email");
    rtn = false;
  }
  if (!rtn) errorResponse(wrong_tags);

  return rtn;
}

function sendData() {
  var form = $("contact_form");
  var xhr = createCORSRequest(form.method, form.action);

  if (xhr) {
    var fd = new FormData(form);
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4 && xhr.status == 200) {
        $("btn_submit").disabled = false;
        var resp = JSON.parse(xhr.responseText);
        if ("failed" == resp["result"]) {
          errorResponse(resp["wrong"]);
        } else if ("success" == resp["result"]) {
          successResponse();
        } else {}
      }
    };

    $("btn_submit").disabled = true;
    xhr.send(fd);
  }
}

function successResponse() {
  addClass($("contact_form"), "hideme");
  removeClass($("thanks_msg"), "hideme");
}

function errorResponse(items) {
  for (var pos in items) {
    removeClass($(items[pos] + "_wrong"), "hideme");
    addClass($(items[pos]), "input_error");
    $(items[pos]).setCustomValidity("Wrong");
  }
}
