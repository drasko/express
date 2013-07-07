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


# GitHub

https://github.com

First create GitHub repo.

Then :

    git init
    git add .
    git commit -m "first commit"
    git remote add origin https://github.com/drasko/express.git
    git push -u origin master


# Nodester

http://nodester.com/

1. Install af cli tool :

    Marx:/home/drasko# gem install af

2. Login to af :
    drasko@Marx:~$ af login
    
3. Go into the Express app directory and push it to the Nodester :

    drasko@Marx:~/express/helloWorld$ af push
    Would you like to deploy from the current directory? [Yn]: 
    Application Name: hello-test
    Detected a Node.js Application, is this correct? [Yn]: 
    1: AWS US East - Virginia
    2: AWS EU West - Ireland
    3: AWS Asia SE - Singapore
    4: HP AZ 2 - Las Vegas
    Select Infrastructure: 2
    Application Deployed URL [hello-test.eu01.aws.af.cm]:
    Memory reservation (128M, 256M, 512M, 1G, 2G) [64M]: 
    How many instances? [1]: 
    Create services to bind to 'hello-test'? [yN]: 
    Would you like to save this configuration? [yN]: 
    Creating Application: OK
    Uploading Application:
    Checking for available resources: OK
    Processing resources: OK
    Packing application: OK
    Uploading (163K): OK   
    Push Status: OK
    Staging Application 'hello-test': OK                                            
    Starting Application 'hello-test': OK                                           


3. Visit hello-test.eu01.aws.af.cm


    
