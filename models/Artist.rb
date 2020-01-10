require('pg')
require_relative('../db/sql_runner.rb')

class Artist

  attr_reader :name, :genre, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @genre = options['genre']
  end

  def save()
    sql = "INSERT INTO artists
    (
      name,
      genre
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @genre]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = 'DELETE FROM artists'
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    return artists.map {|artist| Artist.new(artist)}
  end

  def albums()
    sql = "SELECT * FROM albums
    WHERE artist_id = $1"
    values = [@id]
    albums = SqlRunner.run(sql, values)
    return albums.map {|album| Album.new(album)}
  end

end
