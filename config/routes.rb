Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  	devise_for :admin, :path_names => { :sign_in => "ingreso" } 
	scope "(:locale)", :locale =>/es-CO|es/ do 

		root to:'app#index'
		
		get '/detalles', :controller => 'app', :action => 'detalles' 
		get '/unete', :controller => 'app', :action => 'unete' 
		get '/talleres', :controller => 'app', :action => 'talleres'
		get '/verNoticia', :controller => 'app', :action => 'verNoticia' 

		get '/contacto', :controller => 'contacts', :action => 'new'
		match '/contacts', to: 'contacts#new', via: 'get'
		resources "contacts", only: [:new, :create]
	 
		get '/admin', :controller => 'admin', :action => 'index'

		resources :miembros 
		resources :noticias 
		
		namespace :admin do
			resources :contenidos
			resources :noticias 
			resources :miembros
			resources :categorias
			resources :convenios
			resources :nombres
		end
	end
end
