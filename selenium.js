var webdriverio = require('webdriverio');

console.log('webdriverio', webdriverio);

var options = {
    desiredCapabilities: {
        browserName: 'chrome'
    }	
};

console.log('options', options);

console.log('connecting webdriver');

webdriverio
  .remote(options)
  .init()
  .url('http://localhost')
  .saveScreenshot('screenshots/screen-' + process.env.EID + '.png') 
  .end();
