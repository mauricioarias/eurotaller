class Admin::ConveniosController < AdminController
	def index
		@convenio ||= Convenio.all
	end
	def vista
		@convenio ||= Convenio.all
	end
	def new
		@convenio = Convenio.new
	end

	def create 
		@convenio = Convenio.new(convenio_params)

		if @convenio.save
			redirect_to admin_convenios_path
		else
		    render 'new'
		 end
	end

	def show
		@convenio ||= Convenio.find(params[:id])
	end

	def edit
	  @convenio = Convenio.find(params[:id])
	end

	def destroy
		@convenio = Convenio.find(params[:id])
		@convenio.destroy

		redirect_to admin_convenios_path
	end

	def update
	  	@convenio = Convenio.find(params[:id])
	 
	  if @convenio.update(convenio_params)
	    redirect_to admin_convenio_path(@convenio)
	  else
	    render 'edit'
	  end
	end

	private
	def convenio_params
		params.require(:convenio).permit(:nombre,  :descripcion, :fecha, :logo, :detalles)
	end
end
