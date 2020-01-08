require('pg')
require_relative('../db/sql_runner.rb')

class Album

  attr_reader :title, :genre, :artist_id, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i if options['artist_id']
  end

end
