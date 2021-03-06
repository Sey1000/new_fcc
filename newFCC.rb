#!/usr/bin/env ruby

if ARGV[0] == 'new'
  puts "Are you inside your new project folder with correct name? [y/n]"
  unless STDIN.gets.chomp == 'y'
    puts "Terminating newFCC"
  else
    `git init`
    puts "initialized git"
    `git checkout -b gh-pages`
    puts "created and checked out gh-pages branch"
    `touch index.html`
    puts "created index.html"
    
    project_name = File.split(Dir.getwd)[-1]

    File.open('index.html', 'w') do |file|
      file.write("<!DOCTYPE html>
  <html lang=\"en\">
    <head>
      <meta charset=\"UTF-8\">
      <title>#{project_name}</title>

      <!-- bootstrap 4 & Font Awesome & style.css -->
      <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
      <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">
      <link rel=\"stylesheet\" href=\"style.css\">
    </head>
    <body>
      <h1>#{project_name}</h1> 


      <!-- jQuery & Bootstrap js & application.js -->
      <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"></script>
      <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>
      <script src=\"application.js\"></script>
    </body>
  </html>
  ")
    end
    puts "Complete writing inside index.html"

    `touch style.css`
    puts "created style.css"
    `touch application.js`
    puts "created application.js"

    `touch README.md`
    puts "created README"

    File.open('README.md', 'w') do |file|
      file.write("### #{project_name}
Project backbone created with template by [@Sey1000](https://github.com/Sey1000/new_fcc)")
    end
    puts "Finished writing README"

    `git add --all`
    `git commit -m "Initial commit using template by Sey1000"`
    puts "git add & commit"
    `hub create`
    puts "created github repository"
    `git push origin gh-pages`
    puts "pushed to origin"

    puts ""
    puts "Your page is now available at YOUR_GITHUB_USERNAME.github.io/#{project_name}"
    puts ""
  end
end