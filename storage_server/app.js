const express = require('express');
const app = express();
app.set('env', 'production');
app.use(express.static('storage'));
app.get('/', (req, res) => {
  res.send('cilicili file storage');
});
const server = app.listen(10088);