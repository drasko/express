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
