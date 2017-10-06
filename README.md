# ruby-appium-app-browserstack
Sample scripts to test Android and iOS apps using Appium on  [BrowserStack App Automate](https://www.browserstack.com/app-automate/get-started)

## Prerequisites
1. Export your BrowserStack username and access keys<br>
`export BROWSERSTACK_USERNAME=<browserstack-username>`<br>
`export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>`
2. Install the appium_lib gem<br>
`gem install 'appium_lib'`
3. Install the local bindings gem (if you need to run local tests)<br>
`gem install 'browserstack/local'`

## Android
To run single test<br>
`ruby android/appium_test.rb`


To run local test<br>
`ruby android/local_test.rb`


## iOS
To run single test<br>
`ruby ios/appium_test.rb`


To run local test<br>
`ruby ios/local_test.rb`
