module ApplicationHelper

	# helper for page header converted to string
	def page_header(text)
		content_for(:page_header) { text.to_s }
	end

	# helper for gravatar used within application
	def gravatar_for(user, size = 30, title = user.name)
		image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-round'
	end

end
