# Installation

    Marx:/home/drasko/express# npm install -g express


# Getting help

    drasko@Marx:~/express$ express --help

    Usage: express [options]

    Options:

        -h, --help          output usage information
        -V, --version       output the version number
        -s, --sessions      add session support
        -e, --ejs           add ejs engine support (defaults to jade)
        -J, --jshtml        add jshtml engine support (defaults to jade)
        -H, --hogan         add hogan.js engine support
        -c, --css <engine>  add stylesheet <engine> support (less|stylus) (defaults to plain css)
        -f, --force         force on non-empty directory

# Generating app

    drasko@Marx:~/express$ express helloWorld -c less -H

    create : helloWorld
    create : helloWorld/package.json
    create : helloWorld/app.js
    create : helloWorld/public
    create : helloWorld/public/javascripts
    create : helloWorld/public/images
    create : helloWorld/public/stylesheets
    create : helloWorld/public/stylesheets/style.less
    create : helloWorld/routes
    create : helloWorld/routes/index.js
    create : helloWorld/routes/user.js
    create : helloWorld/views
    create : helloWorld/views/index.hjs

    install dependencies:
        $ cd helloWorld && npm install

    run the app:
        $ node app



