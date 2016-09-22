class DemoController < ApplicationController
  layout false
  def index
  	@first = params[:first]
  	@second = params['second']
    render('index')
  end
  
  def hello
    @array = [1,2,3,4,5]
    render('hello')
  end

  def other_hello
  	redirect_to(controller: 'demo', action: 'hello')
  end 

  def sid
  	redirect_to("http://www.google.com")
  end
end
