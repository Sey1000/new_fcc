#!/usr/bin/env ruby

if ARGV[0] == 'new'

  `git init`
  `git checkout -b gh-pages`
  `touch index.html`
  `touch style.css`
  `touch application.js`
  `git add --all`
  `git commit -m "Initial commit using template by Sey1000"`
  # `hub create`
  # `git push origin gh-pages`

end