require 'sinatra'
require 'sinatra/activerecord'
require 'graphql'
require 'sqlite3'

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

class Survey < ActiveRecord::Base
end

# Generar el esquema de la tabla si no existe
unless ActiveRecord::Base.connection.table_exists?(:surveys)
  ActiveRecord::Schema.define do
    create_table :surveys do |table|
      table.column :name, :string
      table.column :favoriteShow, :string
      table.column :rating, :integer
    end
  end
end