require File.expand_path('../load_paths', __FILE__)
require 'sinatra/base'
require 'padrino-core/application/rendering'
require 'haml'

##
# Small example that show you some padrino rendering.
# Point your browser to:
#
#   http://localhost:3000
#   http://localhost:3000/h1
#
class MyApp < Sinatra::Application
  register Padrino::Rendering

  get "/utf-8" do
    render :utf8
  end

  get "/" do
    "Basic text"
  end

  get "/h1" do
    render "h1"
  end
end # MyApp

MyApp.run!(:port => 3000)