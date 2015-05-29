class NoticiasController < ApplicationController
	def show
		@noticia ||= Noticia.find(params[:id])
		@contenido ||= Contenido.all
	    @categoria ||= Categoria.all
	    @nombre ||= Nombre.all
	end
	
end
