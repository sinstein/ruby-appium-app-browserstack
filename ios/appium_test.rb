require 'rubygems'
require 'appium_lib'
require 'pry'

device =   'iPhone 7'
username = ENV['BROWSERSTACK_USER']
access_key = ENV['BROWSERSTACK_ACCESSKEY']

caps = {}
caps['device'] = 'iPhone 7 Plus'
caps['realMobile'] = true
caps['browserstack.debug'] = true
caps['app'] = 'bs://206df813c42ead2181fd2526c2af674116fefacb'

caps['project'] = 'Sinstein'
caps['build'] = 'Ruby Appium Sample'
caps['name'] = 'iOS Single Test'
# Android App bs://953cfe54a252dcf446117f94b51aaf20fb644441
# Android local bs://025cc446c42c0c84036ab0d23aded1a64ce97b71
# IOS App bs://206df813c42ead2181fd2526c2af674116fefacb

appium_driver = Appium::Driver.new({'caps' => caps, 'appium_lib' => { :server_url => "http://#{username}:#{access_key}@hub.browserstack.com/wd/hub"}})
driver = appium_driver.start_driver


puts driver.session_id

element = driver.find_element(:accessibility_id, "Log In")
element.click

sleep 10

element = driver.find_element(:accessibility_id, "Email address")
element.send_keys("hello@browserstack.com")

driver.find_element(:accessibility_id, "Next").click

sleep 10

results = driver.find_elements(:xpath, "//XCUIElementTypeStaticText")

if elements.map(&:text).any?{|x| x.match('not registered')}
  puts "FOUND RESULTS"
else
  puts "FOUND NOTHING"
end

driver.quit
appium_driver.driver_quit