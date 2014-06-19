task :install_bower do
	puts "check bower"
	begin	
		`bower --version`
	rescue Exception
		`npm install bower -g`
	end
end

task :install_bootstrap=>:install_bower do
	puts "install bootstrap"
	`bower install bootstrap`
end

task :init=>:install_bootstrap do  
	puts 'OK!'
end 