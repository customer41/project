Rails.application.routes.draw do
	root 'todo#index'
  	get 'todo/index'
  	get 'todo/:id/update' => 'todo#update'
  	post 'todo/create'
end
