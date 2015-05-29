class AdminController < ApplicationController
	def index
		@adminName = t(:adminName)
		@contenido ||= Contenido.all
	end
	def show
	end
end
