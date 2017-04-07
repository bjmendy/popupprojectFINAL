class PostController < ApplicationController

	##all of theses start with /post!!!!!

	get '/' do ##this is where they will sign in
		erb :user_posts
		
	end

	get '/allposts' do 

	##this is where they will post
	## query the database and get ALLLLLLLLLLLLLLlLL it might be the mehthod you need


	# last will be an erb page that you want to go to, on that page your going to loop through 
	# all of your events .each squid


	@posts = Event.all

	erb :user_posts

		
	end

	post '/' do 
	@post = Event.new

	p params
	@post.username = params["username"]
	@post.title = params["title"]
	@post.link = params["link"]
	@post.description = params["description"]
	@post.date = params["date"]
	@post.save
	
	@posts = Event.all
	@post.to_json

	erb :user_posts

	end

	patch '/:id' do
		content_type :json
		id = params[:id]

	erb :user_posts

	end

end