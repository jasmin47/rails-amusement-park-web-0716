Rails.application.routes.draw do
root 'users#index'

get 'users/new', to: 'users#new'

post 'users/', to: 'users#create'

  get 'attractions/create'

  get 'attractions/edit'

  get 'attractions/update'

  get 'attractions/destroy'

  get 'attractions/index'

  get 'attractions/show'





  get 'users/edit'

  get 'users/update'

  get 'users/destroy'



  get 'users/show'

end
