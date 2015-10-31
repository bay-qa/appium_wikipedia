def screenshots_dir
  File.expand_path(File.join(File.dirname(__FILE__),"..","..","screenshots"))
end

AfterConfiguration do
  FileUtils.rm_r(screenshots_dir) if File.directory?(screenshots_dir)
end

Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    unless File.directory?(screenshots_dir)
      raise "!!!Cannot capture screenshots!!! Screenshot directory #{screenshots_dir} exists but isn't a directory" if File.exists? screenshots_dir
      FileUtils.mkdir_p(screenshots_dir)
    end
    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name.gsub(/[^\w`~!@#\$%&\(\)_\-\+=\[\]\{\};:',]/, '-')}.png"
    screenshot_file = File.join(screenshots_dir, screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("screenshots/#{screenshot_name}", 'image/png')
  end
  $driver.driver_quit
end