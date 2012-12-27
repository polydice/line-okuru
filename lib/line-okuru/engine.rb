require 'line-okuru/helpers/button_helper'

module Line
  module Okuru
    class Engine < ::Rails::Engine
      initializer "line-okuru.helpers" do
        ActionView::Base.send :include, ButtonHelper
      end
    end
  end
end
