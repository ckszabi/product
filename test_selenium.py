import os
from selenium import webdriver

class TestTest():

    def test_test(self):
        chromedriver = "~/chromedriver"
        os.environ["webdriver.chrome.driver"] = chromedriver
        driver = webdriver.Chrome(chromedriver)
        
        driver.implicitly_wait(3)
        driver.get("http://staging.togital.no/konkurrenten/")
        driver.save_screenshot("screenshot.png")
