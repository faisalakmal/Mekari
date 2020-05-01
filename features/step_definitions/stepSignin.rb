require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox
driver.manage.timeouts.implicit_wait = 10 # seconds

Given("Amazon Home Dashboard") do
  driver.navigate.to "https://www.amazon.com/"
end

When("Click Hello, Sign in") do
   driver.find_element(:xpath,'//*[@id="nav-link-accountList"]').click
   driver.find_element(:id, 'ap_email').send_keys 'faisalakml@gmail.com'
   driver.find_element(:xpath,'//*[@id="continue"]').click
   driver.find_element(:id, 'ap_password').send_keys 'Kuk1r4d14pr14'
   driver.find_element(:xpath,'//*[@id="signInSubmit"]').click
   driver.find_element(:xpath,'//*[@id="continue"]').click
   easy_c = EasyCaptchaSolver.new(image_url: "https://opfcaptcha-prod.s3.amazonaws.com/8c0213f1ac3048f98670d3070730b161.jpg?AWSAccessKeyId=AKIA5WBBRBBB7V6N5KMU&Expires=1588256488&Signature=S6kloFXWlSfnHEKQfQUmZSfAI8s%3D")
end

Then("User Closing The Browser") do
    driver.quit
end