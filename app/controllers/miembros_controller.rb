class MiembrosController < ApplicationController
	def index
		@miembro ||= Miembro.all
		@nombre ||= Nombre.all
		if params[:search]
          @miembro = Miembro.search(params[:search])
        else
          @miembro = Miembro.all.order('created_at DESC')
        end
        @contenido ||= Contenido.all
	end
end
