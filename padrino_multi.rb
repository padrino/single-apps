require 'load_paths'
require 'padrino-core'

##
# This show a Padrino MultiApp
#
class PadrinoApp1 < Padrino::Application

  get :index, :map => '/' do
    "Edit me... Im app1"
  end
end

class PadrinoApp2 < Padrino::Application

  get :index, :map => '/' do
    "Edit me... Im app2"
  end
end

Padrino.mount("PadrinoApp1").to("/")
Padrino.mount("PadrinoApp2").to("/app2")

Padrino.run!(:port => 3000) unless Padrino.loaded?
