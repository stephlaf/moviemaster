# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Response.destroy_all
Answer.destroy_all
Question.destroy_all
Movie.destroy_all
Lens.destroy_all
User.destroy_all
Level.destroy_all
puts "Seeding database..."

def seed_levels
  puts "Creating Five Levels!"
  5.times do |n|
    Level.create(number: n + 1)
  end
end

def seed_users
  puts "Creating Three Users!"
  User.create(email: "steven@spielberg.com", first_name: "Steven", last_name: "Spielberg", password: "123456", level: Level.first)
  User.create(email: "george@lucas.com", first_name: "George", last_name: "Lucas", password: "123456", level: Level.second)
  User.create(email: "ryan@coogler.com", first_name: "Ryan", last_name: "Coogler", password: "123456", level: Level.third)
end

def seed_lenses
  puts "Creating Five Lenses!"
  Lens.create(level: Level.first, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: "Man vs. Self")
  Lens.create(level: Level.second, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: "The Hero's Journey")
  Lens.create(level: Level.third, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: "Man vs. Nature")
  Lens.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: Faker::PrincessBride.quote)
  Lens.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: Faker::PrincessBride.quote)
end

def seed_movies
  puts "Creating Fifteen Movies!"
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Taxi Driver", IMDB: "tt0076759", poster: "taxi-driver.jpeg", movie_guide: "foo.pdf")
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Fight Club", IMDB: "tt0076759", poster: "fight-club.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "The Shining", IMDB: "tt0076759", poster: "shining-b.jpeg", movie_guide: "foo.pdf")
  Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Star Wars", IMDB: "tt0076759", poster: "star_wars.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "The Wizard of Oz", IMDB: "tt0076759", poster: "The-Wizard-of-Oz.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Rocky", IMDB: "tt0076759", poster: "rocky.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "King Kong", IMDB: "tt0076759", poster: "king-kong.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Jaws", IMDB: "tt0076759", poster: "jaws-a.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Into The Wild", IMDB: "tt0076759", poster: "into_the_wild.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
end

def seed_questions
  puts "Creating Quiz For Each Movie"
  Movie.all.each do |movie|
    puts "Adding questions for movie '#{movie.title}'"
    10.times do
      Question.create(movie: movie, content: Faker::Community.quotes)
    end
  end
end

def seed_answers
  puts "Creating Answers For Each Question - The Correct Answer From Faker Will Always Be A Chuck Norris Fact"
  Question.all.each do |question|
    3.times do
      Answer.create(question: question, content: Faker::MostInterestingManInTheWorld.quote)
    end
    Answer.create(question: question, content: Faker::ChuckNorris.fact, correct: true)
  end
end

def seed_responses
  puts "Seeding Quiz Responses For One User (Steven Spielberg)"
  Question.all.each do |question|
    Response.create(user: User.first, answer: question.answers.sample)
  end

end

seed_levels
seed_users
seed_lenses
seed_movies
seed_questions
seed_answers
seed_responses

