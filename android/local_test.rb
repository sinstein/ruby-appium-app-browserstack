require 'rubygems'
require 'appium_lib'
require 'browserstack/local'

device =   'Google Pixel'
username = ENV['BROWSERSTACK_USER']
access_key = ENV['BROWSERSTACK_ACCESSKEY']

caps = {}
caps['device'] = device
caps['realMobile'] = true
caps['browserstack.local'] = true
caps['browserstack.debug'] = true
caps['app'] = 'bs://025cc446c42c0c84036ab0d23aded1a64ce97b71'

caps['project'] = 'Sinstein'
caps['build'] = 'Ruby Appium Sample'
caps['name'] = 'Android Local Test'

# Android App bs://953cfe54a252dcf446117f94b51aaf20fb644441
# IOS App bs://206df813c42ead2181fd2526c2af674116fefacb

bs_local = BrowserStack::Local.new
bs_local_args = { "key" => access_key }
bs_local.start(bs_local_args)

appium_driver = Appium::Driver.new({'caps' => caps, 'appium_lib' => { :server_url => "http://#{username}:#{access_key}@hub.browserstack.com/wd/hub"}})
driver = appium_driver.start_driver


element = driver.find_element(:id, "com.example.android.basicnetworking:id/test_action")
element.click

sleep 30

elements = driver.find_elements(:class, "android.widget.TextView")
if elements.map(&:text).any?{|x| x.match('Up and running')}
  puts "Up and Running"
else
  puts "Down this shit"
end

driver.quit
appium_driver.driver_quit

bs_local.stop