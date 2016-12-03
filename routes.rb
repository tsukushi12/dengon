require 'sinatra'
require './config.rb'
require(CConf::DBPath + "/mydb.rb")


get '/form' do
	@values = Hash.get(CConf::Key, 0)
	render :form
end

post '/new' do
	{CConf::Key => params["value"]}.save	

end
