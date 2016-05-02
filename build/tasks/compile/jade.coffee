gulp = require 'gulp'
parameters = require '../../parameters.coffee'

jade = require 'gulp-jade'
plumber = require 'gulp-plumber'
gutil   = require 'gulp-util'

gulp.task 'jade', ->
  gulp.src parameters.app_path + '/*.jade'
  .pipe plumber()
  .pipe jade pretty: true
  .pipe gulp.dest parameters.web_path
  .on 'error', gutil.log
