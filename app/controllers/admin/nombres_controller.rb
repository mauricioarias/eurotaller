class Admin::NombresController < AdminController
	def index
		@nombre ||= Nombre.all
	end
	def vista
		@nombre ||= Nombre.all
	end
	def new
		@nombre = Nombre.new
	end

	def create 
		@nombre = Nombre.new(nombre_params)

		if @nombre.save
			redirect_to admin_nombres_path
		else
		    render 'new'
		 end
	end

	def show
		@nombre ||= Nombre.find(params[:id])
	end

	def edit
	  @nombre = Nombre.find(params[:id])
	end

	def destroy
		@nombre = Nombre.find(params[:id])
		@nombre.destroy

		redirect_to admin_nombres_path
	end

	def update
	  	@nombre = Nombre.find(params[:id])
	 
	  if @nombre.update(nombre_params)
	    redirect_to admin_nombre_path(@nombre)
	  else
	    render 'edit'
	  end
	end

	private
	def nombre_params
		params.require(:nombre).permit(:sesion1, :sesion2, :sesion3, :sesion4, :sesion5)
	end
end
