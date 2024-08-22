require 'sinatra'
require 'json'
require 'graphql'
require_relative './src/schema/survey_schema'
require_relative './src/model/survey_model'

set :port, 8099

post '/graphql' do
  content_type :json
  request_body = request.body.read
  params = JSON.parse(request_body)

  result = SurveySchema.execute(
    params['query'],
    variables: params['variables'],
    context: {},
    operation_name: params['operationName']
  )

  result.to_json
end