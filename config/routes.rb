Rails.application.routes.draw do
	resources :users, :books , :orders

	# get 'orders' => 'shop#orders'
 end
