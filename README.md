# newFCC
Auto-generates backbone for FreeCodeCamp projects

## Installation
0. You need Ruby and [hub](https://hub.github.com/)

1. `git clone https://github.com/Sey1000/new_fcc.git`
2. `cd new_fcc`
3. `ln -s $PWD/newFCC.rb /usr/local/bin/newFCC`

## Usage
Inside a folder you want your project to live  
```
mkdir YOUR_PROJECT_NAME
cd YOUR_PROJECT_NAME
newFCC new
```

For example,  
```
mkdir random_quote_machine
cd random_quote_machine 
newFCC new
```

## Result
`newFCC new` does a couple things:  
1. initialize git
2. create and switch to gh-pages branch
3. create index.html, style.css, application.js files with these cdn included
   - Bootstrap 4
   - Font-awesome
   - jQuery
   - Bootstrap js
4. git add, commit
5. create github repo and push to gh-pages branch

## Behind story
I got sick of using Codepen for FCC API projects, so I decided to take advantage of gh-pages branches instead. But I didn't want to waste so much time writing backbone of html, css, js, and setting up Github repo, hence this ruby project that automates the process.

![automate all the things](https://avatars2.githubusercontent.com/u/16477209?v=4&s=200)
