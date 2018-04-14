/* created at 2018/4/10 by BlueSky @cilicili */

const LOGIN_STATUS = ajaxLogin.now();

// if (LOGIN_STATUS.status === false && utils.getPage() !== 'index' && utils.getPage() !== 'login') {
//   window.location = 'index.htm';
// }

const VIDEO_INFO = ((id) => {
  if (id === null) {
    return {
      status: "failure"
    };
  } else {
    return ajaxVideo.findId(id);
  }
})(utils.getRequest("id"));