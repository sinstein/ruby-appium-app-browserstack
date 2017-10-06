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

## Testing Android Apps
Refer to [instructions](android/README.md)

## Testing iOS Apps
Refer to [instructions](ios/README.md)
