desc 'Running chromedriver in headless/head modes'

task :run_headless do
  sh ' TEST_ENV=ondemand HEADLESS=true CUCUMBER_BROWSER=chrome bundle exec cucumber features/Initial.feature'
end

task :run_head do
  sh ' TEST_ENV=ondemand HEADLESS=false CUCUMBER_BROWSER=chrome bundle exec cucumber features/Initial.feature'
end