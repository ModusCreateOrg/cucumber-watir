# For more information on writing hooks please read the cuke wiki
# https://github.com/cucumber/cucumber/wiki/Hooks

# Tagged Hooks
Before('@desktop') do
  @browser = Watir::Browser.new(:chrome)
end

Before('@mobile') do
  @browser = Watir::Browser.new(:chrome)
  @browser.window.resize_to(640,960)
end

Before('@tablet') do
  @browser = Watir::Browser.new(:chrome)
  @browser.window.resize_to(1024,768)
end


After do
 @browser.close
end
