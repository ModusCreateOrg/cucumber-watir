require 'cucumber/rake/task'

require 'fileutils'
FileUtils::mkdir_p 'results'

task :default => 'all'

Cucumber::Rake::Task.new(:all, 'Runs all tests') do |t|
  t.cucumber_opts = "features/*.feature
    --format html --out=results/all-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
    --format pretty --no-source
    --format rerun --out results/all-rerun.txt
    --tag @regression"
end

Cucumber::Rake::Task.new(:smoke, 'Runs the smoke test suite') do |t|
  t.cucumber_opts = "features/*.feature
    --format html --out=results/smoke-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
    --format pretty --no-source
    --format rerun --out results/smoke-rerun.txt
    --tag @smoke"
end

Cucumber::Rake::Task.new(:jenkins_all, 'Run all tests for Jenkins CI') do |t|
  t.cucumber_opts = "features/*.feature
    --format html --out=results/jenkins-all-report-#{Time.now.strftime("%Y-%m-%d-%H-%M-%S")}.html
    --format pretty --no-source
    --format rerun --out results/jenkins-rerun.txt
    --tag @regression
    'HEADLESS=true'"
end


Cucumber::Rake::Task.new(:regression, 'Runs tests tagged as regression') do |t|
  t.cucumber_opts = "features/*
    --format html --out=results/regression-report.html
    --format pretty --no-source
    --format rerun --out results/regression-rerun.txt
    --tag @regression"
end

Cucumber::Rake::Task.new(:desktop, 'Runs test tagged as desktop') do |t|
  t.cucumber_opts = "features/*
    --format html --out=results/desktop-report.html
    --format pretty --no-source
    --format rerun --out results/desktop-rerun.txt
    --tag @desktop"
end

Cucumber::Rake::Task.new(:mobile, 'Runs test tagged as mobile') do |t|
  t.cucumber_opts = "features/*
    --format html --out=results/mobile-report.html
    --format pretty --no-source
    --format rerun --out results/mobile-rerun.txt
    --tag @mobile"
end

Cucumber::Rake::Task.new(:tablet, 'Runs test tagged as tablet') do |t|
  t.cucumber_opts = "features/*
    --format html --out=results/tablet-report.html
    --format pretty --no-source
    --format rerun --out results/tablet-rerun.txt
    --tag @tablet"
end

