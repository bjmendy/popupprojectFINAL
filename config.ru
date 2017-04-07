require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/RegisterController'
require './controllers/PostController'

require './models/UserModel'
require './models/PostModel'
require './models/RegisterModel'


map('/') {run ApplicationController}
map('/register') {run RegisterController}
map ('/posts') {run PostController}
