class BasePresenter
  def initialize(object, template)
    @object = object
    @template = template
  end

  private

  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, ""
    end
  end

  def h
    @template
  end

  def self.presents(name)
    define_method(name) do
      @object
    end
  end
end
