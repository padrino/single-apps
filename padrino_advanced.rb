require 'load_paths'
require 'padrino-core'
require 'haml'

##
# This show a Padrino MultiApp
#
class PadrinoApp1 < Padrino::Application
  layout :layout

  get :index, :map => '/' do
    render "adv1"
  end
end

PadrinoApp1.run!(:port => 3000)