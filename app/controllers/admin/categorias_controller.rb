class Admin::CategoriasController < AdminController
	layout 'admin'
  	
  	def index
		@categoria ||= Categoria.all
		@noticia ||= Noticia.all
	end

	def show
		@categoria = Categoria.find(params[:id])
	end	
  
  	def new
		@categoria ||= Categoria.new
	end

  	def create
		@categoria = Categoria.new(categoria_params)

		if @categoria.save
			redirect_to admin_categorias_path, notice: "la categoria fue creado con exito"
		else
		    render action: "new"
		end
    end

    def edit
    	@categoria = Categoria.find(params[:id])
  	end

  	def update
	  	@categoria = Categoria.find(params[:id])
	  	if @categoria.update_attributes(categoria_params)
	    	redirect_to  admin_categoria_path, notice: "La categoria se ha actualizado automaticamente."
	  	else
	    	render action: "edit"
	  	end
	end

	def destroy
    	@categoria = Categoria.find(params[:id])
		@categoria.destroy
    	redirect_to admin_categorias_path
    end

	private

		def categoria_params
			params.require(:categoria).permit(:nombre)
		end
end

