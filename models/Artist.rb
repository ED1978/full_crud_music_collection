require('pg')
require_relative('../db/sql_runner.rb')

class Artist

  attr_reader :name, :genre, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @genre = options['genre']
  end

end
