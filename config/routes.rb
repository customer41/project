Rails.application.routes.draw do
	root 'todo#index'
  	get 'todo/index'
  	get 'todo/update'
  	post 'todo/create'
end
