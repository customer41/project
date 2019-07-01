# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'yaml'
# Парсим данные из yml файла
data = HashWithIndifferentAccess.new(YAML.load_file('db/seeds.yml'))
# Получаем массив проектов (получается массив хешей)
projects = data[:projects]
# Для каждого проекта из массива:
projects.each do |project|
  # Создаем новый проект в БД
  created_project = Project.create!(title: project[:title])
  # Создаем для нового проекта todos
  created_project.todos.create!(project[:todos])
end