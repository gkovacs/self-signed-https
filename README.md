# self-signed-https

Creates a self-signed https server

## Installation

    npm install self-signed-https

## Usage

A basic HTTPS hello world app written in express (paste into app.js):

```javascript
var express = require('express')
var selfSignedHttps = require('self-signed-https')

var app = express()
app.get('/', function(req, res) {
    res.send('hello world')
})

selfSignedHttps(app).listen(443, '0.0.0.0')
```

You will need to run as root as it's listening on port 443 (change to a higher port like 3000 if you want to run without sudo):

    sudo node app.js

Then, you can visit https://localhost in your web browser

## License

MIT

## Credits

Author: [Geza Kovacs](http://github.com/gkovacs)

