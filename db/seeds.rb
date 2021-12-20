require 'csv'

Page.delete_all
Game.delete_all
Publisher.delete_all

filename = Rails.root.join('db/vgsales.csv')

puts "Loading games from the CSV file: #{filename}"

csv_data = File.read(filename)
games = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

games.each do |m|
  # puts m["original_title"]
  publisher = publisher.find_or_create_by(name: m['Publisher'])

  if publisher && publisher.valid?
    game = publisher.games.create(
      title: m['Name'],
      year: m['Year'],
      genre: m['Genre'],
      sales: m['Global_Sales'],
      rank: m['Rank']
    )

    # game && game.valid?
    puts "Invalid game #{m['orginal_title']}" unless game&.valid?
  else
    puts "Invalid Production Comapny: #{m['publisher']} for game: #{m['Name']}"
  end
end

Page.create(
  title: 'Contact Us',
  content: 'If you dont like this site, email your complaints to Queen_Elizabeth2@gmail.com',
  permalink: 'contact'
)

Page.create(
  title: 'About the data',
  content: 'I got all of this from Scotts demo',
  permalink: 'about_the_data'
)

puts "Created #{ProductionCompany.count} Production Companies"
puts "Created #{game.count} games"
