Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/get_all_books' => 'welcome#get_all_books'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
