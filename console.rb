require('pry')
require_relative('./models/Artist.rb')
require_relative('./models/Album.rb')


david_bowie = Artist.new (
  {
    'name' => 'David Bowie',
    'genre' => 'Rock'
  }
)
david_bowie.save()


binding.pry
nil
