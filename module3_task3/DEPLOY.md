# Hello, here we will answer some questions that may arise regarding the deploy

## What is in the archive and how to unarchive it?

in the file 'awesome-website.zip' the files in the dist/ directory are
compressed and you can unzip it as follows

➜ unzip awesome-website.zip

## What are the commands to start and stop the application?

you can use the following command

➜ hugo server -d

## How to customize where the application logs are written?

in the file config.toml

## config.toml

change publishDIr
publishDir = 'dist'
tag
## How to “quickly” verify that the application is running (healthcheck)?

abre la pagina en tu servidor local
