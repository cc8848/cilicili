/* created at 2018/4/10 by BlueSky @cilicili */
$.ajaxSetup({
  async: false
});
const API_SERVER_HOSTNAME = window.location.hostname;
const API_SERVER_PORT = 10086;
const API_SERVER = `//${API_SERVER_HOSTNAME}:${API_SERVER_PORT}`;
const STORAGE_SERVER_HOSTNAME = window.location.hostname;
const STORAGE_SERVER_PORT = 10088;
const STORAGE_SERVER = `//${STORAGE_SERVER_HOSTNAME}:${STORAGE_SERVER_PORT}`;

const API_SERVER_padEnd = SERVICE_PATH => `${API_SERVER}/api/${SERVICE_PATH}`;
