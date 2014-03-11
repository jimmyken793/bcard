module UsersHelper
	def small_profile(user)
		content_tag(:div){
			content_tag(:h2, user.name) +
			content_tag(:p, user.email) +
			content_tag(:p, user.skill) +
			content_tag(:p, user.description)
		}
	end
end
