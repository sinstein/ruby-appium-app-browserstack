require 'rubygems'
require 'appium_lib'
require 'browserstack/local'
require 'pry'

device =   'iPhone 7'
username = ENV['BROWSERSTACK_USER']
access_key = ENV['BROWSERSTACK_ACCESSKEY']

caps = {}
caps['device'] = 'iPhone 7 Plus'
caps['realMobile'] = true
caps['browserstack.local'] = true
caps['browserstack.debug'] = true
caps['app'] = 'bs://f06c0cf5c524b636f174f32d4572519656fe4d73'

caps['project'] = 'Sinstein'
caps['build'] = 'Ruby Appium Sample'
caps['name'] = 'iOS Local Test'

# Android App bs://953cfe54a252dcf446117f94b51aaf20fb644441
# Android local bs://025cc446c42c0c84036ab0d23aded1a64ce97b71
# IOS App bs://206df813c42ead2181fd2526c2af674116fefacb
# IOS Local bs://f06c0cf5c524b636f174f32d4572519656fe4d73


bs_local = BrowserStack::Local.new
bs_local_args = { "key" => access_key }
bs_local.start(bs_local_args)

appium_driver = Appium::Driver.new({'caps' => caps, 'appium_lib' => { :server_url => "http://#{username}:#{access_key}@hub.browserstack.com/wd/hub"}})
driver = appium_driver.start_driver


puts driver.session_id

element = driver.find_element(:accessibility_id, "TestBrowserStackLocal")
element.click

sleep 10

element = driver.find_element(:accessibility_id, "ResultBrowserStackLocal")

if element.text.match("Up and running")
  puts "FOUND RESULTS"
else
  puts "FOUND NOTHING"
end

driver.quit
appium_driver.driver_quit

bs_local.stop