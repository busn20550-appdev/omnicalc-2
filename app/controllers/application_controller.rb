class ApplicationController < ActionController::Base


def sc_results 

  street_address = params.fetch('street_input')

  gmaps_token = ENV.fetch("GMAPS_TOKEN") 
  #make the ENV variable save the key token info to your environment  in Gitpod
  gmap_api = " https://maps.googleapis.com/maps/api/geocode/json?address=#{street_address}&key=#{gmaps_token}"

  @raw_data = open(gmap_api).read 
  @parsed_data = JSON.parse(@raw_data) 
  @results = @parsed_data.fetch('results')

  @first_result.fetch('geometry')
  @geo = @first_result.fetch('geometry')
  @loc = @geo.fetch('location')
  @lat = @loc.fetch('lat')
  @lng = @loc.fetch('lng')


  render ({ :template => 'api_templates/sc_results'})

end 

end
