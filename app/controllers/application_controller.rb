class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || admin_path
  end

  def after_update_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || admin_path
  end
   before_action :set_locale
	def set_locale
	  if cookies[:eurotaller_locale] && I18n.available_locales.include?(cookies[:eurotaller_locale].to_sym)
	    l = cookies[:eurotaller_locale].to_sym
	  else
	    begin
	      country_code = request.location.country_code
	      if country_code
	        country_code = country_code.downcase.to_sym
	        # es para Centro América y es-co para Colombia
	        [:gt, :cr, :mx, :bz, :sv, :pa, :ni, :hn].include?(country_code) ? l = :es : l = 'es-CO'
	      else
	        l = I18n.default_locale # use default locale if cannot retrieve this info
	      end
	    rescue
	      l = I18n.default_locale
	    ensure
	      cookies.permanent[:eurotaller_locale] = l
	    end
	  end
	  I18n.locale = l
	end
	def extract_locale_from_tld
		parsed_locale = request.host.split('.').last
		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end
	def extract_locale_from_subdomain
		parsed_locale = request.subdomains.first
		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end
	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end
	private
	  def extract_locale_from_accept_language_header
	    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
	  end
end
