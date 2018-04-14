/* created at 2018/4/9 by BlueSky @cilicili */
const utils = {
  getPage() {
    return window.location.pathname.replace(/[\/|.htm+]/g, '') || "index";
  }, getRequest(request) {
    let reg = new RegExp("(^|&)" + request + "=([^&]*)(&|$)", "i");
    let result = window.location.search.substr(1).match(reg);
    if (result != null) return unescape(result[2]);
    return null;
  }
  , getCookie(name) {
    name = name + '=';
    let cookies = document.cookie.split(';');
    for (let i = 0; i < cookies.length; i++) {
      let cookie = cookies[i].trim();
      if (cookie.indexOf(name) === 0)
        return cookie.substring(name.length, cookie.length);
    }
    return '';
  }
  , setCookie(name, value) {
    document.cookie = name + '=' + value + ';'
  }
};