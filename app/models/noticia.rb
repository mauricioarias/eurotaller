class Noticia < ActiveRecord::Base
	do_not_validate_attachment_file_type :image
	has_attached_file  :image, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	#translates :titulo, :contenido, :categoria, :descripcion
end
