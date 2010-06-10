require 'load_paths'
require 'sinatra/base'
require 'padrino-core/application/routing'

##
# Small example that show you some padrino routes.
# Point your browser to:
#
#   http://localhost:3000
#   http://localhost:3000/bar
#   http://localhost:3000/bar.js
#   http://localhost:3000/custom-route/123
#
# These routes didn't works:
#
#   http://localhost:3000/bar.xml
#   http://localhost:3000/bar.jsl
#   http://localhost:3000/custom-route
#
class MyApp < Sinatra::Application
  register Padrino::Routing

  get :foo, :map => "/" do
    "This is foo mapped as index"
  end

  get :bar, :provides => [:js, :html] do
    case content_type
      when :js   then "Bar for js"
      when :html then "Bar for html"
      else "You can never see this"
    end
  end

  get :custom, :map => '/custom-route', :with => :id do
    "This is a custom route with #{params[:id]} as params[:id]"
  end
end # MyApp

MyApp.run!(:port => 3000)