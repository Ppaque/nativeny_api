require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/nativeny_api'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/nativeny_api_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/nativeny_api_development'
    #    adapter :sql, 'mysql://localhost/nativeny_api_development'
    #
    adapter :sql, 'mysql2://localhost/nativeny_api_development'

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []
  end
end
