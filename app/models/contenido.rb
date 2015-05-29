class Contenido < ActiveRecord::Base
	do_not_validate_attachment_file_type :fondoInicio, :imgConvenios, :imgBeneficios, :imgRespalfo, :fondoBeneficios, :imagen, :imgFormacion, :imgMarketing, :imgInfomacion, :imgImagen, :fondoUnete, :fondoTalleres, :fondoNoticias, :fondoContacto, :logo, :logoAdmin
	has_attached_file  :imgConvenios, :url => "/system/:attachment/:id/:locale/:style-:fingerprint.:extension", :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoInicio, :styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgBeneficios,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgRespalfo,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoBeneficios,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imagen, :styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgFormacion,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgMarketing,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgInfomacion,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :imgImagen,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoUnete,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoTalleres,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoNoticias,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :fondoContacto,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :logo,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file :logoAdmin,:styles => { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	#translates :descripcion, :slogan1, :frase1, :convenios, :beneficios, :respaldo, :slogan2, :frase2, :formacion, :marketing, :informacion, :imagen, :frase3, :slogan3, :frase4, :slogan4, :frase5, :slogan5, :frase6, :frase7, :correo, :telefono, :facebook, :twitter, :google,  :imagenEurotaller, :masRespaldo, :masBeneficios, :fondoInicio_file_name, :fondoInicio_content_type, :fondoInicio_file_size, :fondoInicio_updated_at

end
