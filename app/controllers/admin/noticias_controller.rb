class Admin::NoticiasController < AdminController
	def index
		@noticia ||= Noticia.all
		@categoria ||= Categoria.all
		@nombre ||= Nombre.all
	end
	def vista
		@noticia ||= Noticia.all
	end
	def new
		@noticia = Noticia.new
	end

	def create 
		@noticia = Noticia.new(noticia_params)

		if @noticia.save
			redirect_to admin_noticias_path
		else
		    render 'new'
		 end
	end

	def show
		@noticia ||= Noticia.find(params[:id])
	end

	def edit
	  @noticia = Noticia.find(params[:id])
	end

	def destroy
		@noticia = Noticia.find(params[:id])
		@noticia.destroy

		redirect_to admin_noticias_path
	end

	def update
	  	@noticia = Noticia.find(params[:id])
	 
	  if @noticia.update(noticia_params)
	    redirect_to admin_noticia_path(@noticia)
	  else
	    render 'edit'
	  end
	end

	private
	def noticia_params
		params.require(:noticia).permit(:titulo, :contenido, :image, :categoria, :descripcion)
	end
end
