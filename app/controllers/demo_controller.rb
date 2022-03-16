class DemoController < ApplicationController #DemoController inherits from ApplicationController
  
  layout false  #turns layout off
  def index  #method aka action, renders a view and default view layout
            #default tells it to go to index
    render('hello')  #tyhis is default action. This sets the template. Don't need to do this
                      #remember, it is not calling this actiion, just setting template.
                      # render usually used with if/else
  end

  def hello
    render('index')  #this is default action. This sets the tempate.
  end 

  def hello_other
    # redirect_to(:controller => 'demo', :action => 'index')
    # since already in demo_controller this is assumed, so only need action
    redirect_to(:action => 'index')
  end

  def whitesox
    redirect_to('http://whitesox.com')
  end


end

# route will be demo/index. Can see this in config/routes
# Dont need to, but good practice to have action defined for each tempalte. 
#reminds us its a possible choice server can make w/out serving an error