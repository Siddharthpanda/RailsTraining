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

  def text_helpers
  end

  def logging
    logger.debug("In debug")
    logger.info("In info")
    logger.warn("In warn")
    logger.error("In error")
    logger.fatal("In fatal")
    render(:text => 'Logged')
  end 
end
