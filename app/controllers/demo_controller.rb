class DemoController < ApplicationController #DemoController inherits from ApplicationController
  
  layout false  #turns layout off
  def index  #method aka action, renders a view and default view layout

  end
end

# route will be demo/index. Can see this in config/routes