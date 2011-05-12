require File.expand_path('../load_paths', __FILE__)
require 'padrino-core'

##
# Small example of a simple Padrino Application
#
class PadrinoBasic < Padrino::Application

  get :index, :map => '/' do
    "Edit ... Im reloadable!"
  end
end

PadrinoBasic.run!(:port => 3000)
# or
# Padrino.mount("PadrinoBasic").to("/")
# Padrino.run!(:port => 3000) unless Padrino.loaded?
