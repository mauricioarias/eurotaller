class Admin::ContenidosController < AdminController
	layout 'admin'
  	
  	def index
		@contenido ||= Contenido.all
	end

	def show
		@contenido = Contenido.find(params[:id])
	end	
  
  	def new
		@contenido ||= Contenido.new
	end

  	def create
		@contenido = Contenido.new(contenido_params)

		if @contenido.save
			redirect_to admin_contenidos_path, notice: "el contenido fue creado con exito"
		else
		    render action: "new"
		end
    end

    def edit
    	@contenido = Contenido.find(params[:id])
  	end

  	def update
	  	@contenido = Contenido.find(params[:id])
	  	if @contenido.update_attributes(contenido_params)
	    	redirect_to  admin_contenido_path, notice: "El contenido se ha actualizado automaticamente."
	  	else
	    	render action: "edit"
	  	end
	end

	def destroy
    	@contenido = Contenido.find(params[:id])
		@contenido.destroy
    	redirect_to admin_contenidos_path
    end

private

	def contenido_params
		params.require(:contenido).permit(:descripcion, :fondoInicio, :slogan1, :frase1, :convenios, :beneficios, :respaldo, :imgConvenios, :imgBeneficios, :imgRespalfo, :fondoBeneficios, :slogan2, :frase2, :formacion, :marketing, :informacion,  :frase3, :imgFormacion, :imgMarketing, :imgInfomacion, :imgImagen, :fondoUnete, :slogan3, :frase4, :fondoTalleres, :slogan4, :frase5, :fondoNoticias, :slogan5, :frase6, :frase7, :correo, :telefono, :facebook, :twitter, :google, :fondoContacto, :imagenEurotaller, :masRespaldo, :masBeneficios, :fraseInicio, :nosotros)
	end

end
