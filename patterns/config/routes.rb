Routes = Router.new do
  match '/'           => 'home#index'
  match '/home/index' => 'home#index'
  match '/echo'       => 'echo#index'
  match '/users'      => 'users#index'
  match '/users/show' => 'home#show'
end
