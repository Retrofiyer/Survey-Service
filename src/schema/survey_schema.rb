class SurveyType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :name, String, null: false
  field :favoriteShow, String, null: false
  field :rating, Integer, null: false
end

class QueryType < GraphQL::Schema::Object
  field :surveys, [SurveyType], null: false

  def surveys
    Survey.all
  end
end

class CreateSurvey < GraphQL::Schema::Mutation
  argument :name, String, required: true
  argument :favoriteShow, String, required: true
  argument :rating, Integer, required: true

  field :survey, SurveyType, null: false

  def resolve(name:, favoriteShow:, rating:)
    survey = Survey.create(name: name, favoriteShow: favoriteShow, rating: rating)
    { survey: survey }
  end
end

class MutationType < GraphQL::Schema::Object
  field :create_survey, mutation: CreateSurvey
end

class SurveySchema < GraphQL::Schema
  query QueryType
  mutation MutationType
end