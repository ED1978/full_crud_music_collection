require('pry')
require_relative('./models/Artist.rb')
require_relative('./models/Album.rb')

Artist.delete_all()

david_bowie = Artist.new (
  {
    'name' => 'David Bowie',
    'genre' => 'Rock'
  }
)
david_bowie.save()

kurt_cobain = Artist.new  (
  {
    'name' => 'Kurt Cobain',
    'genre' => 'Grunge'
  }
)
kurt_cobain.save()

binding.pry
nil
