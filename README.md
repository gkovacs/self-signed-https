# self-signed-https

Creates a self-signed https server

## Installation

    npm install self-signed-https

## Usage

A basic HTTPS hello world app written in express:

```javascript
var express = require('express')
var app = express()
app.get('/', function(req, res) {
    res.send('hello world')
})

var selfSignedHttps = require('self-signed-https')
selfSignedHttps(app).listen(3000, '0.0.0.0')
console.log('Visit https://localhost:3000 in your web browser')
```

## License

MIT

## Credits

Author: [Geza Kovacs](http://github.com/gkovacs)

