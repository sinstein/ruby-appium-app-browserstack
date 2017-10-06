require 'rubygems'
require 'appium_lib'
require 'pry'

device =   'Google Pixel'
username = ENV['BROWSERSTACK_USER']
access_key = ENV['BROWSERSTACK_ACCESSKEY']

caps = {}
caps['device'] = 'Google Pixel'
caps['realMobile'] = true
caps['browserstack.debug'] = true
caps['app'] = 'bs://953cfe54a252dcf446117f94b51aaf20fb644441'

caps['project'] = 'Sinstein'
caps['build'] = 'Ruby Appium Sample'
caps['name'] = 'Android Single Test'

# Android App bs://953cfe54a252dcf446117f94b51aaf20fb644441
# IOS App bs://206df813c42ead2181fd2526c2af674116fefacb

appium_driver = Appium::Driver.new({'caps' => caps, 'appium_lib' => { :server_url => "http://#{username}:#{access_key}@hub.browserstack.com/wd/hub"}})
driver = appium_driver.start_driver

element = driver.find_element(:accessibility_id, "Search Wikipedia")
element.send_keys("BrowserStack")

sleep 10

results = driver.find_elements(:class, "android.widget.TextView")
if results.count > 0
  puts "FOUND RESULTS"
else
  puts "FOUND NOTHING"
end

driver.quit
appium_driver.driver_quit