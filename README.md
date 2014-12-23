# self-signed-https

Creates a self-signed https server

# Installation

    npm install self-signed-https

# Usage

A basic HTTPS hello world app written in express:

    express = require('express')
    app = express()
    app.get('/', function(req, res) {
        res.send('hello world')
    })
    selfSignedHttps = require('self-signed-https')
    selfSignedHttps(app).listen(3000, '0.0.0.0')

# License

MIT

# Credits

[Geza Kovacs](http://github.com/gkovacs)

