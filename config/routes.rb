Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/new'

  get 'restaurants/index'

  get 'restaurants/edit'

  get 'restaurants/show'

  get 'restaurants/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
