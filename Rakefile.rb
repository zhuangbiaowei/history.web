task :install_bower do
	puts "check bower"
	version = `bower --version`
	`npm install bower -g` unless version
end

task :install_bootstrap=>:install_bower do
	puts "install bootstrap"
	`bower install bootstrap`
end

task :init=>:install_bootstrap do  
	puts 'OK!'
end 