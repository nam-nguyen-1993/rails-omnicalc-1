class PagesController < ApplicationController
  def square_new
    render({ :template => "pages_templates/square_new"})
  end 
  
  def square_result
    @number = params.fetch("number").to_f
    @result = @number ** 2
    render({ :template => "pages_templates/square_result"})
  end 

  def square_root_new
    render({ :template => "pages_templates/square_root_new"})
  end

  def square_root_result
    @number = params.fetch("number").to_f
    @result = @number ** 0.5
    render({ :template => "pages_templates/square_root_result"})
  end 
  
  def payment_new
    render({ :template => "pages_templates/payment_new"})
  end

  def payment_result
    @apr = params.fetch("user_apr").to_f/1200
    @year = params.fetch("user_years").to_f*12
    @principal = params.fetch("user_pv").to_f
    @payment = (@apr * @principal) / (1 - ((1+@apr)**(-@year)))
    render({ :template => "pages_templates/payment_result"})
  end
  
  def random_new
    render({ :template => "pages_templates/random_new"})
  end 

  def random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@min..@max)

    render({ :template => "pages_templates/random_result"})
  end 

end 
