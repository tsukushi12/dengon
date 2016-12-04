require 'sinatra'
require './config.rb'
require(CConf::DBPath + "/mydb.rb")


get '/form' do
	@values = Hash.get(CConf::Key, 0)
	@key = CConf::Key
	erb :form
end

post '/new' do
	{CConf::Key => params["value"]}.save	
	redirect to('/form')
end
