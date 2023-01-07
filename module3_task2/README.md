
# Go-Hugo Website

This project aims at showing use cases where a DevOps mindset is bringing value
to a software project by automating it, which decreases the amount of manual
work and increases the development speed. It focuses on why automation is
useful and helps speeding a development lifecycle.

## Tooling

This project needs the following tools / services:

* An HTML5-compliant web browser (Firefox, Chrome, Opera, Safari, Edge, etc.)
* A free account on GitHub.
* A shell terminal with bash, zsh or ksh, including the standard Unix toolset
(ls, cd, etc.) with:
  * GNU Make in version 3.81+
  * Git (command line) in version 2+
  * Go Hugo v0.80+
  * A text editor or IDE (Visual Code, Notepad++, Vim, Emacs, IntelliJ, etc.)

## Prerequisites

* Use the theme “ananke” for the website
* The website title should be “Awesome Inc.”
* The contents consists in a single blog post which title should be “Welcome to
Awesome Inc.”, stored in a file named welcome.md
* All of the website’s source code is stored under a directory named
module1_task2
* The command line hugo in version +0.84.0 must be used
* The website is expected to be generated into the directory
module1_task2/dist/
* GNU Make version 3.81 or 4.0 must be used
* The “Build” step should be executed by the command make build, “Clean” by
make clean and “Post” by make post.

## Lifecycle

* build: Generate the website from the markdown and configuration files in the
directory dist/.
* clean: Cleanup the content of the directory dist/
* post: Create a new blog post whose filename and title come from the environment
variables POST_TITLE and POST_NAME.
* package: produces a file awesome-website.zip that containing the dist/ directory
* lint: correct readme's
* help: Shows a short help description about Makefile usage.

## Usage

➜ ls -1 ./dist/
➜ make build
➜ ls -1 ./dist/index.html
index.html

➜ ls -1 ./content/posts/
welcome.md
➜ make POST_NAME=who-are-we POST_TITLE="Who are we" post
➜ ls -1 ./content/posts/
welcome.md who-are-we.md

➜ make clean
➜ ls -1 ./dist/
➜

➜ make help
➜
 build: Generate the website from the markdown and configuration files in the
 directory dist/.
 clean: Cleanup the content of the directory dist/
 post: Create a new blog post whose filename and title come from the
 environment variables POST_TITLE and POST_NAME.

➜ make package
➜ ls
➜ awesome-website.zip

➜ make lint
➜ verified DEPLOY.md

## Workflows

### Steps

* Clone the repository
* Position yourself in the correct directory and execute the command make help
to validate that the Makefile is present and implements the help target.

### This workflow must be triggered

* Each time there is new code pushed on your repository
* And once per day (whatever time you want).
