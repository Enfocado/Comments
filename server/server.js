const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.get('/', (req, res) => res.send('Hello World!'));

const port = 3003;
if (process.env.NODE_ENV !== 'test') {
  app.listen(port, () => console.log(`listening on ${port}`));
}

module.exports = app;
