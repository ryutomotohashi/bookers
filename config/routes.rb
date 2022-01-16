Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'book#show',as: book
  get 'books/:id' => 'books#edit',as: book_edit
  putch 'books/:id' => 'book#updata',as: book_updata
  get 'top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
