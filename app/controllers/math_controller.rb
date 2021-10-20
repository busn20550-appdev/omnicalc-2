class MathController < ActionController::Base
  layout('application.html.erb')


  def add 
  render({ :template => 'math_templates/add.html.erb'})
  end

  def add_results 
    @first = params.fetch('first_num').to_f
    @second = params.fetch('second_num').to_f
    @result = @first * @second
    
  render({ :template => 'math_templates/add_results.html.erb'})
  end

  def subtract 
    render({ :template => 'math_templates/subtract.html.erb'})
    end
  
  def subtract_results 
      @first = params.fetch('first_num').to_f
      @second = params.fetch('second_num').to_f
      @result = @second - @first
      
    render({ :template => 'math_templates/subtract_results.html.erb'})
  end


  def multiply 
    render({ :template => "math_templates/mult.html.erb"})
  end

  def multiply_results 
    @first = params.fetch('first_num').to_f
    @second = params.fetch('second_num').to_f
    @result = @first * @second
    
  render({ :template => 'math_templates/mult_results.html.erb'})
  end

  def divide 
    render({ :template => "math_templates/div.html.erb"})
  end

  def divide_results 
    @first = params.fetch('first_num').to_f
    @second = params.fetch('second_num').to_f
    @result = @first / @second
    
  render({ :template => 'math_templates/div_results.html.erb'})
  end



end