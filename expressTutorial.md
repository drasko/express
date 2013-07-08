# Node.js Express Tutorial

## Installation
```bash
    Marx:/home/drasko/express# npm install -g express
```

## Getting help
```bash
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
```

## Generating app
```bash
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

```


## GitHub
[https://github.com](https://github.com)

First create GitHub repo.

Then :
```bash
    git init
    git add .
    git commit -m "first commit"
    git remote add origin https://github.com/drasko/express.git
    git push -u origin master
```

## Nodester
[http://nodester.com](http://nodester.com)
* Install af cli tool :
```bash
    Marx:/home/drasko# gem install af
```
* Login to af :
```bash
    drasko@Marx:~$ af login
```
* Go into the Express app directory and push it to the Nodester :

```bash
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
```

* Visit [http://hello-test.eu01.aws.af.cm](http://hello-test.eu01.aws.af.cm)

## Bootstrap and Font-Awesome


Twitter Bootstrap: [http://twitter.github.io/bootstrap/](http://twitter.github.io/bootstrap/)

Font-Awesome: [http://fortawesome.github.io/Font-Awesome/](http://fortawesome.github.io/Font-Awesome/)

* Copy `getBootstrap.sh` to folder of new application and run it
* It will get Bootstrap and Font-Awesome from the web and install everything
* Start node and point browser to `localhost:3000`

```bash
#!/bin/bash

# Clean ./public
rm -r ./public/*

# Get Bootstrap
wget http://twitter.github.io/bootstrap/assets/bootstrap.zip
unzip bootstrap.zip
mv ./bootstrap/* ./public
rm -r ./bootstrap*

# Get Font-Awesome
wget http://fortawesome.github.io/Font-Awesome/assets/font-awesome.zip
unzip font-awesome.zip
mv ./font-awesome/font ./public
mv ./font-awesome/css/* ./public/css
rm -r font-awesome*

cat << END > ./views/index.hjs
<!DOCTYPE html>
<head>
    <title>Twitter Bootstrap</title>
    <style type='text/css'></style>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>

    <link href="css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <h1>Hello World!</h1>

        <div class="row">
            <button class="btn btn-large btn-primary" type="button">Bootstrap</button>
        </div>

        <div class="row">
            <i class="icon-flag icon-4x pull-left icon-border"></i>
                Font-Awesome is working!

            <p><i class="icon-camera-retro icon-large"></i> icon-camera-retro</p>
        </div>
    </div>

</body>
</html>
END
```


## References

* Express.js video tutorials : [http://www.youtube.com/watch?v=eD2I0zAjM5g](http://www.youtube.com/watch?v=eD2I0zAjM5g)
* Nodester AF CLI tool : [https://docs.appfog.com/getting-started/af-cli](https://docs.appfog.com/getting-started/af-cli)
* NodeCloud : [http://www.nodecloud.org/](http://www.nodecloud.org/)
* Node Cellar : [http://coenraets.org/blog/2012/10/nodecellar-sample-application-with-backbone-js-twitter-bootstrap-node-js-express-and-mongodb/](http://coenraets.org/blog/2012/10/nodecellar-sample-application-with-backbone-js-twitter-bootstrap-node-js-express-and-mongodb/)
* Bootsnip : [https://bootsnipp.com/](https://bootsnipp.com/)
* Bootstrap Resources List : [http://www.bootstraphero.com/the-big-badass-list-of-twitter-bootstrap-resources](http://www.bootstraphero.com/the-big-badass-list-of-twitter-bootstrap-resources)


    
