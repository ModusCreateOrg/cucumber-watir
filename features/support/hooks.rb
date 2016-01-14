# For more information on writing hooks please read the cuke wiki
# https://github.com/cucumber/cucumber/wiki/Hooks

RESULTS_DIR="results"
TIMEOUT=180

 if ENV["DRIVER"]
    DRIVER = ENV["DRIVER"]
 else
    #DRIVER = "firefox"
    DRIVER = "chrome"
 end

# This method to set timeout came from
# http://stackoverflow.com/questions/9014121/how-do-i-change-the-page-load-timeouts-in-watir-webdriver-timeout-in-click-met/9044958#9044958
# however, it's not working as expected :(
# Maybe we can try solutions outlined here instead:
# http://stackoverflow.com/questions/17242404/watir-implicit-wait-doesnt-seem-to-work
# http://stackoverflow.com/questions/18204926/automate-timeout-handling-wait-and-refresh-in-watir
# http://stackoverflow.com/questions/18659847/reload-page-until-it-has-some-element-using-ruby-selenium-webdriver/18660166#18660166
def get_browser
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = TIMEOUT # seconds – default is 30
  browser = Watir::Browser.new DRIVER.to_sym, :http_client => client
  return browser
end

Before ('@desktop') do
  @browser = get_browser
  screen_width = @browser.execute_script("return screen.width;")
  screen_height = @browser.execute_script("return screen.height;")
  @browser.driver.manage.window.resize_to(screen_width,screen_height)
end

Before ('@mobile') do
  @browser = get_browser
	if DRIVER == "chrome"
    @browser.window.resize_to(640,960)
  else
    @browser.window.maximize
  end
end

Before ('@tablet') do
  @browser = get_browser
	if DRIVER == "chrome"
    @browser.window.resize_to(1024,768)
  else
    @browser.window.maximize
  end
end

After ('~@appium')do
  @browser.close
end

After do |scenario|
  if(scenario.failed?)
    if @browser && @browser.screenshot
      @browser.screenshot.save("#{RESULTS_DIR}/#{scenario.__id__}.png")
      Dir.chdir(RESULTS_DIR) do
          embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
      end
    end
  end
end
