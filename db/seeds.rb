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

def seed_wars
  starwars = Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: Faker::Lorem.paragraph,title: "Star Wars", IMDB: "tt0076759", poster: "star_wars.jpg", movie_guide: "foo.pdf")
  question1 = Question.create(movie: starwars, content: "Tatooine corresponds to the:")
  Answer.create(question: question1, content: "call to  adventure")
  Answer.create(question: question1, content: "ordinary world", correct: true)
  Answer.create(question: question1, content: "special world")
  Answer.create(question: question1, content: "refusal of the call")

  question2 = Question.create(movie: starwars, content: "Luke receives his call to adventure:")
  Answer.create(question: question2, content: "when Ob-Wan Kenobi reveals himself to be a Jedi knight")
  Answer.create(question: question2, content: "when R2-D2 projects Leia's plea for help", correct: true)
  Answer.create(question: question2, content: "when he goes off in search the missing R2-D2")
  Answer.create(question: question2, content: "when Obi-Wan presents him with hi father's light saber")

  question3 = Question.create(movie: starwars, content: "Luke initially refuses the call to action because:")
  Answer.create(question: question3, content: "he likes his life just as it is")
  Answer.create(question: question3, content: "he feels like the rebellion has nothing to do with him")
  Answer.create(question: question3, content: "he is afraid of spaceships")
  Answer.create(question: question3, content: "he feels an obligation to his aunt and uncle", correct: true)

  question4 = Question.create(movie: starwars, content: "Who is Luke's mentor?")
  Answer.create(question: question4, content: "Obi-Wan Kenobi", correct: true)
  Answer.create(question: question4, content: "Han Solo")
  Answer.create(question: question4, content: "Princess Leia")
  Answer.create(question: question4, content: "R2-D2")

  question5 = Question.create(movie: starwars, content: "The threshold stage of the hero's journey is represented by:")
  Answer.create(question: question5, content: "Luke's aunt and uncle's farm")
  Answer.create(question: question5, content: "The dessert of Tatooine")
  Answer.create(question: question5, content: "The Milennium Falcon", correct: true)
  Answer.create(question: question5, content: "The Mos Eisley spaceport")

  question6 = Question.create(movie: starwars, content: "Luke's allies are:")
  Answer.create(question: question6, content: "The sand people")
  Answer.create(question: question6, content: "The Jawa traders")
  Answer.create(question: question6, content: "The storm troopers")
  Answer.create(question: question6, content: "Obi-Wan, Han Solo and Chewbaca, R2D2 and C3PO", correct: true)

  question7 = Question.create(movie: starwars, content: "The inmost cave is:")
  Answer.create(question: question7, content: "The Milennium Falcon")
  Answer.create(question: question7, content: "The Death Star", correct: true)
  Answer.create(question: question7, content: "Alderaan")
  Answer.create(question: question7, content: "Mos Eisley")

  question8 = Question.create(movie: starwars, content: "During the Ordeal stage of the hero's journey:")
  Answer.create(question: question8, content: "a thug in the cantina picks a fight with Luke")
  Answer.create(question: question8, content: "Luke's aunt and uncle are killed")
  Answer.create(question: question8, content: "Obi-Wan sacrifices himself to save Luke", correct: true)
  Answer.create(question: question8, content: "Princess Leia is killed")

  question9 = Question.create(movie: starwars, content: "The hero's reward for saving Princess Leia is:")
  Answer.create(question: question9, content: "he receives a cake")
  Answer.create(question: question9, content: "he becomes a pilot in the rebel fleet", correct: true)
  Answer.create(question: question9, content: "he becomes commander of the Death Star")
  Answer.create(question: question9, content: "he receives his father's light saber")

  question10 = Question.create(movie: starwars, content: "The resurrection stage of the hero's journey occurs when:")
  Answer.create(question: question10, content: "Darth Vader reveals that he is Luke's father")
  Answer.create(question: question10, content: "Luke channels Obi-Wan and the force to destroy the death star", correct: true)
  Answer.create(question: question10, content: "Luke receives a medal fro Princess Leia")
  Answer.create(question: question10, content: "Han Solo returns to help Luke fight the Death Star")
end

seed_levels
seed_users
seed_lenses
seed_movies
seed_questions
seed_answers
seed_responses
seed_wars

