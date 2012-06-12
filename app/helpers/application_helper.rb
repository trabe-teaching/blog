module ApplicationHelper

  def errors_for(model)
    return "" if model.errors.blank?

    content_tag(:div,
      content_tag(:p, "There are errors in the form. Please fix them") +
      content_tag(:ul, model.errors.full_messages.map {|m| content_tag :li, m}.join.html_safe),
      :class => 'form_errors')
  end

  def markdown(text)
    Maruku.new(text).to_html.html_safe
  end
end
