Hoofprinter::Application.routes.draw do

  get "main/index"
  post "main/index"

  root :to => 'main#index'

end
