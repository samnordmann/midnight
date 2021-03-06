gulp = require 'gulp'
parameters = require '../../parameters.coffee'

coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
gutil   = require 'gulp-util'
plumber = require 'gulp-plumber'

# Compile CoffeeScript files to JS
# `module.coffee` files are treated before others so all the modules are declared before being used
coffeeFiles = [
  "#{parameters.app_path}/**/module.coffee"
  "!#{parameters.app_path}/**/*.test.coffee"
  "#{parameters.app_path}/**/*.coffee"
]

gulp.task 'coffee', ->
  gulp.src coffeeFiles
  .pipe plumber()
  .pipe coffee()
  .pipe concat parameters.app_main_file
  .pipe gulp.dest "#{parameters.web_path}/js"
  .on 'error', gutil.log
