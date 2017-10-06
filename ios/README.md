## iOS
Test your iOS App on BrowserStack App Automate

### Running single test
1. Upload our [sample iOS app](https://www.browserstack.com/app-automate/sample-apps/ios/WordPressSample.ipa) (.ipa file) to the BrowserStack servers using the REST API. Please note the App URL (bs://<hashed app-id>) returned in the response of this call.<br>
  `curl -u "BROWSERSTACK_USERNAME:BROWSERSTACK_ACCESSKEY" -X POST "https://api.browserstack.com/app-automate/upload" -F "file=@/path/to/app/file/WordPressSample.ipa"`

2. Update the desired capability `app` with the App URL returned from the above API call.

3. Run the sample tests `ruby single_test.rb`


### Running local test

1. Upload our [sample iOS local app](https://www.browserstack.com/app-automate/sample-apps/ios/LocalSample.ipa) (.ipa file) to the BrowserStack servers using the REST API. Please note the App URL (bs://<hashed app-id>) returned in the response of this call.<br>
  `curl -u "BROWSERSTACK_USERNAME:BROWSERSTACK_ACCESSKEY" -X POST "https://api.browserstack.com/app-automate/upload" -F "file=@/path/to/app/file/LocalSample.ipa"`

2. Update the desired capability `app` with the App URL returned from the above API call.

3. Run the sample tests <br> `ruby local_test.rb`