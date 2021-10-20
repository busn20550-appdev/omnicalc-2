class ApplicationController < ActionController::Base


def sc_results 

  gmap_api = " https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=REPLACE_THIS_QUERY_STRING_PARAMETER_WITH_YOUR_API_TOKEN"

  @raw_data = open(gmap_api).read 
  @parsed_data = JSON.parse(@raw_data) 
  @results = @parsed_data.fetch('results')

  @first_result.fetch('geometry')
  @geo = @first_result.fetch('geometry')
  @loc = @geo.fetch('location')
  @lat = @loc.fetch('lat')
  @lng = @loc.fetch('lng')


  render ({ :template => 'weather_templates/geo_results'})

end 

end
