class Admin::MiembrosController < AdminController
	layout 'admin'
	def index
		@miembro ||= Miembro.all
		@nombre ||=  Nombre.all
	end
	def vista
		@miembro ||= Miembro.all
	end
	def new
		@miembro = Miembro.new
	end

	def create 
		@miembro = Miembro.new(miembro_params)

		if @miembro.save
			redirect_to admin_miembros_path
		else
		    render 'new'
		 end
	end

	def show
		@miembro ||= Miembro.find(params[:id])
	end

	def edit
	  	@miembro = Miembro.find(params[:id])
	end

	def destroy
		@miembro = Miembro.find(params[:id])
		@miembro.destroy

		redirect_to admin_miembros_path
	end

	def update
	  	@miembro = Miembro.find(params[:id])
	 
	  if @miembro.update(miembro_params)
	    redirect_to admin_miembro_path(@miembro)
	  else
	    render 'edit'
	  end
	end

	private
	def miembro_params
		params.require(:miembro).permit(:nombreTaller, :nombreContacto, :telefono, :direccion, :comentario, :mapa, :ciudad, :fax, :horario, :marcaVehiculo, :grua, :cita, :pagina, :fotoTaller, :logo, :foto1, :foto2, :foto3, :foto4)
	end
end
