app_path = 'app'

config =

  app_path: app_path
  web_path: 'public'
  vendor_path: 'vendor'
  assets_path: app_path + '/assets'

  app_main_file: 'midnight.js'
  css_main_file: 'midnight.css'
  less_main_file: app_path + '/app.less'
  templates_file: 'app.templates.js'
  templates_module: 'midnight'
  vendor_main_file: 'vendor.js'
  bower_main_file: 'bower-vendor.js'
  manifest_file: 'midnight.appcache'

module.exports = config
