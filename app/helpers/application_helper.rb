module ApplicationHelper

  def present(object, klass=nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter if block_given?
    presenter
  end

    def avatar(user)
      if user.avatar.present?
        image_tag(user.avatar, class: 'avatar')
      end
    end
end
