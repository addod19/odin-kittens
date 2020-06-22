Rails.application.routes.draw do
  get 'kittens/index'
  get 'kittens/create'
  get 'kittens/new'
  get 'kittens/update'
  get 'kittens/destroy'
  get 'kittens/show'
  get 'kittens/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
