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

  get('/muggle_translate', { :controller => 'application', :action => ''})
  get('/trans/results', { :controller => 'application', :action => ''})

  get('/street_to_coords/new', { :controller => 'application', :action => ''})
  get('/sc/results', { :controller => 'application', :action => 'sc_results'})

  get('/coords_to_weather/new', { :controller => 'application', :action => ''})
  get('/cw/results', { :controller => 'application', :action => ''})

  get('/street_to_weather/new', { :controller => 'application', :action => ''})
  get('/sw/results', { :controller => 'application', :action => ''})


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
