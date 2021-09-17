desc 'Running chromedriver in headless/head modes'

task :run_headless do
  sh ' TEST_ENV=ondemand HEADLESS=true CUCUMBER_BROWSER=chrome bundle exec cucumber features/Initial.feature'
end

task :run_head do
  sh ' TEST_ENV=ondemand HEADLESS=false CUCUMBER_BROWSER=chrome bundle exec cucumber features/active_user_log_in.feature'
end

task :parallel_run do
  sh ' TEST_ENV=ondemand HEADLESS=false CUCUMBER_BROWSER=chrome bundle exec parallel_cucumber -n 2 -- -p parallel -- features/'
end