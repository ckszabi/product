from selenium import webdriver

class TestTest():

    def test_test(self):
        driver = webdriver.Chrome()
        driver.implicitly_wait(3)
        driver.get("http://staging.togital.no/konkurrenten/")
        driver.save_screenshot("screenshot.png")
