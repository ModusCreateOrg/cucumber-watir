require 'cucumber/rake/task'
require 'fileutils'
FileUtils::mkdir_p 'results'

task :default => 'regression:all'

namespace :regression do

 Cucumber::Rake::Task.new(:all, 'Regression test suite') do |t|
  	t.cucumber_opts = "features/*.feature
             --format html --out=results/ptp-regression-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
		--format pretty --no-source
             --format rerun --out results/ptp-regression-rerun.txt
		--tag @regression"
  end
  Cucumber::Rake::Task.new(:smoke, 'smoke test suite') do |t|
  	t.cucumber_opts = "features/*.feature
             --format html --out=results/ptp-regression-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
		--format pretty --no-source
             --format rerun --out results/ptp-smoke-rerun.txt
		--tag @smoke"
  end
  Cucumber::Rake::Task.new(:jenkins_all, 'Regression test suite') do |t|
    t.cucumber_opts = "features/*.feature
      --format html --out=results/ptp-regression-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
      --format pretty --no-source
      --format rerun --out results/ptp-regression-rerun.txt
      --tag @regression
      'HEADLESS=true'"
  end
end
