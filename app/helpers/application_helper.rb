module ApplicationHelper
    def avatar(user)
      if user.avatar.present?
        image_tag(user.avatar, class: 'avatar')
      end
    end
end
