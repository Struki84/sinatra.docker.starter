# load sinatra essentials
require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/reloader'
require 'erb'


# load controllers
Dir[File.dirname(__FILE__) + '/controllers/*.rb'].each {|file| require file}

map('/') {run WebController}