require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox
driver.manage.timeouts.implicit_wait = 10 # seconds

Given("Amazon Home Dashboard") do
  driver.navigate.to "https://www.amazon.com/"
end

When("Click Hello, Sign up") do
  driver.find_element(:xpath,'//*[@id="nav-link-accountList"]').click
  driver.find_element(xpath,'//*[@id="createAccountSubmit"]').click
end

When("Click Create your Amazon account") do
  driver.find_element(:xpath,//*[@id="ap_customer_name"]).click
  driver.find_element(:id//*[@id="ap_email"]).send_keys 'FAISAL AKMAL'
  driver.find_element(//*[@id="ap_password"]).send_keys 'password123'
  driver.find_element(//*[@id="ap_password_check"]).send_keys 'password123'
  driver.find_element(//*[@id="continue").click
  driver.find_element(//*[@id="cvf-page-content"] //inputCaptcha
  driver.find_element(//*[@id="a-autoid-0"]).click
  driver.find_element(//*[@id="cvf-page-content"]).send_keys 'ABCDE'
  driver.find_element(//*[@id="a-autoid-0"]).click
end

Then("User Closing The Browser") do
  driver.quit
end