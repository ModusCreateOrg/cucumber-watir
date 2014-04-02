require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:all, 'Runs the whole test Suite') do |t|
  	t.cucumber_opts = "features/*
             --format html --out=results/all-report.html
					   --format pretty --no-source"
end

Cucumber::Rake::Task.new(:regression, 'Runs the whole test Suite') do |t|
    t.cucumber_opts = "features/*
             --format html --out=results/regression-report.html
             --format pretty --no-source
             --tag @regression"
end

Cucumber::Rake::Task.new(:regression, 'Runs test tagged as regression') do |t|
    t.cucumber_opts = "features/*
             --format html --out=results/regression-report.html
             --format pretty --no-source
             --tag @regression"
end

Cucumber::Rake::Task.new(:desktop, 'Runs test tagged as Desktop') do |t|
    t.cucumber_opts = "features/*
             --format html --out=results/desktop-report.html
             --format pretty --no-source
             --tag @desktop"
end

Cucumber::Rake::Task.new(:mobile, 'Runs test tagged as Mobile') do |t|
    t.cucumber_opts = "features/*
             --format html --out=results/mobile-report.html
             --format pretty --no-source
             --tag @mobile"
end

Cucumber::Rake::Task.new(:tablet, 'Runs test tagged as tablet') do |t|
    t.cucumber_opts = "features/*
             --format html --out=results/tablet-report.html
             --format pretty --no-source
             --tag @tablet"
end
