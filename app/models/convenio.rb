class Convenio < ActiveRecord::Base
	do_not_validate_attachment_file_type :logo
	has_attached_file  :logo, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	#translates :descripcion, :fecha, :nombre, :detalles
end
