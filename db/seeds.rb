# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_prject(title, description, complexity, duration, devs, link = '', git_repo = '', tags = [])
  Client.create(name: title).projects.create(
    title: title,
    description: description,
    complexity: complexity, 
    duration: duration,
    devs: devs,
    link: link,
    git_repo: git_repo,
    tags: tags
  )
end

Rails.application.eager_load!
ApplicationRecord.descendants.each { |model|
  model.delete_all
  ActiveRecord::Base.connection.reset_pk_sequence!(model.table_name)
  puts "The table #{model.table_name} was deleted!"
}

# Create tags
ruby = Tag.create(title: 'Ruby', order: 1, strength: 5)
rails = Tag.create(title: 'Ruby on Rails', order: 2, strength: 5)
javascript = Tag.create(title: 'JavaScript', order: 3, strength: 5)
react = Tag.create(title: 'React', order: 4, strength: 4)
html = Tag.create(title: 'HTML', order: 5, strength: 6)
css = Tag.create(title: 'CSS', order: 6, strength: 5)
bootstrap = Tag.create(title: 'Bootstrap', order: 7, strength: 6)
pgsql = Tag.create(title: 'PostgreSQL', order: 8, strength: 5)
git = Tag.create(title: 'git', order: 9, strength: 5)

# Create projects
agora = create_prject(
  'Agora',
  'This citizen discussion platform aims to give French citizens the means to propose and discuss local citizen ideas and to get involved in the improvement of their cities.',
  5, 
  23,
  4,
  'https://agora-prd.herokuapp.com/',
  'https://github.com/MathieuBobin/agora',
  [ruby, rails, javascript, html, css, bootstrap, pgsql, git]
)
le_moulin = create_prject(
  'Le Moulin',
  'The objective of this Click and Collect type platform was to allow small traders to make themselves known and citizens to easily find their needs while encouraging local commerce.',
  5,
  18,
  3,
  'https://lemoulin.herokuapp.com/',
  'https://github.com/ClementPain/LeMoulin',
  [rails, javascript, react, html, bootstrap, pgsql, git]
)
ze_kitten_project = create_prject(
  'Ze Kitten Project', 
  'This site offers pictures of kittens for sale.',
  4,
  21,
  4,
  'https://ze-kitten-project.herokuapp.com/',
  'https://github.com/MathieuBobin/Kitty-Project-V2',
  [ruby, rails, html, bootstrap, pgsql, git]
)
dwarfurler = create_prject(
  'dwarfURLer',
  'This website provides a URL shortener that can create a DwarfURL from a giant URL, so you can share cute URLs with the rest of the world instead of URLs that go a mile!',
  3, 
  7,
  0,
  'https://dwarfurler.herokuapp.com/',
  'https://github.com/b-ouinten/DwarfURLer_A_URL_shortener',
  [ruby, rails, bootstrap, pgsql, git]
)
french_embassies = create_prject(
  'French embassies',
  'This website provides a french embassies directory',
  3, 
  4,
  0,
  'https://french-embassies-app.herokuapp.com/',
  'https://github.com/b-ouinten/French_embassies',
  [ruby, rails, bootstrap, pgsql, git]
)
ai_morpion = create_prject(
  'Morpion with AI',
  'This is a morpion AI-based. The AI was implimented using the concept of trees in algorithms.',
  5, 
  4,
  0,
  'https://b-ouinten.github.io/Morpion_with_AI/',
  'https://github.com/b-ouinten/Morpion_with_AI',
  [javascript, css, git]
)
