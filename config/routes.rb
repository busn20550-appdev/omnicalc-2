Rails.application.routes.draw do


  get('/', { :controller => 'math', :action => 'add'})

  get('/add', { :controller => 'math', :action => 'add'})

  get('/wizard_add', { :controller => 'math', :action => 'add_results'})
  
  get('/subtract', { :controller => 'math', :action => 'subtract'})

  get('/wizard_subtract', { :controller => 'math', :action => 'subtract_results'})

  get('/multiply', { :controller => 'math', :action => 'multiply'})

  get('/wizard_multiply', { :controller => 'math', :action => 'multiply_results'})

  get('/divide', { :controller => 'math', :action => 'divide'})

  get('/wizard_divide', { :controller => 'math', :action => 'divide_results'})


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
