app = angular.module('retangular-app', ['restangular'])

app.config (RestangularProvider) ->
  RestangularProvider.setBaseUrl "/"

  RestangularProvider.setRestangularFields
    id: "_id"

  # Now let's configure the response extractor for each request
  RestangularProvider.setResponseExtractor (response, operation, what, url) ->
    if response.data?    
      newResponse = response.data
      newResponse.metadata = response.meta
      newResponse.notifications = response.notifications
      newResponse
