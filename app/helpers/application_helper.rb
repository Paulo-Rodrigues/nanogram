module ApplicationHelper
    def avatar(user)
        image_tag(user.avatar, class: 'avatar')
    end
end
