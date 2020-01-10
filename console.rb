require('pry')
require_relative('./models/Artist.rb')
require_relative('./models/Album.rb')

Album.delete_all()
Artist.delete_all()

david_bowie = Artist.new (
  {
    'name' => 'David Bowie',
    'genre' => 'Rock'
  }
)
david_bowie.save()

nirvana = Artist.new  (
  {
    'name' => 'Nirvana',
    'genre' => 'Grunge'
  }
)
nirvana.save()

black_star = Album.new (
  {
    'title' => 'Black Star',
    'genre' => 'Experimental',
    'artist_id' => david_bowie.id
  }
)
black_star.save()

low = Album.new (
  {
    'title' => 'Low',
    'genre' => 'Rock',
    'artist_id' => david_bowie.id
  }
)
low.save()

in_utero = Album.new (
  {
    'title' => 'In Utero',
    'genre' => 'Grunge',
    'artist_id' => nirvana.id
  }
)
in_utero.save()

nevermind = Album.new (
  {
    'title' => 'Nevermind',
    'genre' => 'Grunge',
    'artist_id' => nirvana.id
  }
)
nevermind.save()

binding.pry
nil
