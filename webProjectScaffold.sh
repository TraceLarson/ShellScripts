#!/bin/bash

# Run this in any directory where you wish to create a boilerplate web project
# with a js directory,css directory and optional bootstrapCDN

echo "What is the name of this project? "
read projectName

echo "Do you want to install bootstrap with this file?"
read bootstrapResponse

echo "What do you want your JavaScript folder to be named?"
read jsDirName

echo "What do you want your main JavaScript file to be named?"
read jsMainFileName

echo "What do you want your styles directory to be named?"
read stylesDirName

echo "What do you want your styles file to be named?"
read stylesFileName

scriptFormat=".js"
styleFormat=".css"

# BOOTSTRAP CDNs
if [ $bootstrapResponse == "y" ]
then
    jqueryCDN="<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>"
    popperCDN="<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>"
    bootstrapCDN="<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>"
    bootstrapStyleSheetCDN="<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">"
else
    jqueryCDN=""
    popperCDN=""
    bootstrapCDN=""
    bootstrapStyleSheetCDN=""    
fi

mkdir $projectName
cd $projectName
touch "index.html"
mkdir $jsDirName $stylesDirName
cd $jsDirName
touch $jsMainFileName$scriptFormat
cd ../$stylesDirName
touch $stylesFileName$styleFormat
cd ..
cat <<- EOF >> "index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- StyleSheets -->
     $bootstrapStyleSheetCDN
    <link rel="stylesheet" href="$stylesDirName/$stylesFileName$styleFormat">

    <title>$projectName</title>
</head>
<body>
    <h1>WELCOME TO MY PAGE!</h1>

    <!-- SCRIPTS -->
    $jqueryCDN
    $popperCDN
    $bootstrapCDN
    <script src="$jsDirName/$jsMainFileName$scriptFormat"></script>
</body>
</html
EOF

