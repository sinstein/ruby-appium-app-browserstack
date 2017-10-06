## Android
Test your Android App on BrowserStack App Automate

### Running single test
1. Upload our [sample Android app](https://www.browserstack.com/app-automate/sample-apps/android/WikipediaSample.apk) (.apk file) to the BrowserStack servers using the REST API. Please note the App URL (bs://<hashed app-id>) returned in the response of this call.<br>
  `curl -u "BROWSERSTACK_USERNAME:BROWSERSTACK_ACCESSKEY" -X POST "https://api.browserstack.com/app-automate/upload" -F "file=@/path/to/app/file/WikipediaSample.apk"`

2. Update the desired capability `app` with the App URL returned from the above API call.


3. Run the sample tests `ruby single_test.rb`


### Running local test

1. Upload our [sample Android local app](https://www.browserstack.com/app-automate/sample-apps/android/LocalSample.apk) (.apk file) to the BrowserStack servers using the REST API. Please note the App URL (bs://<hashed app-id>) returned in the response of this call.<br>
  `curl -u "BROWSERSTACK_USERNAME:BROWSERSTACK_ACCESSKEY" -X POST "https://api.browserstack.com/app-automate/upload" -F "file=@/path/to/app/file/LocalSample.apk"`

2. Update the desired capability `app` with the App URL returned from the above API call.

3. Run the sample tests <br> `ruby local_test.rb`