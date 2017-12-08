var webdriverio = require('webdriverio');

var options = {
    desiredCapabilities: {
        browserName: 'chrome'
    },
	host: 'selenium-ch',
	port: 4444
};

webdriverio
  .remote(options)
  .init()
  .url('http://buddy.works')
  .saveScreenshot('screenshots/screen-' + process.env.EID + '.png') 
  .end();
