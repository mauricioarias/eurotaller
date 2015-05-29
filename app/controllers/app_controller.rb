class AppController < ApplicationController
  #  before_filter :authorize
  def index
      @noticia ||= Noticia.all
      @contenido ||= Contenido.all
      @categoria ||= Categoria.all
      @convenio ||= Convenio.all
      @nombre ||= Nombre.all
      @hola = t(:hola)
  end
  def detalles
  	@contenido ||= Contenido.all
    @convenio ||= Convenio.all
    @nombre ||= Nombre.all
  end
  def unete
  	@contenido ||= Contenido.all
    @nombre ||= Nombre.all
  end
  def talleres
  	@contenido ||= Contenido.all
    @miembro ||= Miembro.all
    @nombre ||= Nombre.all
  end
  def contacto
    @contenido ||= Contenido.all
    @nombre ||= Nombre.all
  end
  def verNoticia
    @noticia ||= Noticia.all
    @contenido ||= Contenido.all
    @categoria ||= Categoria.all
    @nombre ||= Nombre.all
  end
end
