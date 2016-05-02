path = require 'path'
less = require 'gulp-less'
gulp = require 'gulp'
parameters = require '../../parameters.coffee'
minifyCSS = require 'gulp-minify-css'

gulp.task 'less', ->
  gulp.src parameters.less_main_file
  .pipe less paths: [ path.join(__dirname) ]
  .pipe minifyCSS()
  .pipe rename parameters.css_main_file
  .pipe gulp.dest parameters.web_path+'/css'
  .on 'error', gutil.log
