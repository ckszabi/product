import os
from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


class TestTest():

    def test_test(self):
        #chromedriver = "/home/travis/chromedriver"
        #os.environ["webdriver.chrome.driver"] = chromedriver
        
        #options = webdriver.ChromeOptions()
        #options.binary_location = '/usr/bin/google-chrome-stable'
        #options.set_headless(1);
        #options.add_argument("--disable-gpu");
        #service_log_path = "{}/chromedriver.log".format(outputdir)
        #service_args = ['--verbose']
        
        #driver = webdriver.Chrome(chromedriver, chrome_options=options)
        driver = webdriver.Remote(
            command_executor='http://selenium-ch:4444/wd/hub',
            desired_capabilities=DesiredCapabilities.CHROME)
        #driver = webdriver.Chrome()
        
        driver.implicitly_wait(3)
        driver.get("http://staging.togital.no/konkurrenten/")
        driver.save_screenshot("screenshot.png")
