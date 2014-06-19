require 'sinatra/base'

class MyApp < Sinatra::Base
	set :public_folder, File.dirname(__FILE__) + '/bower_components'
	get '/' do
		haml :index
	end
end