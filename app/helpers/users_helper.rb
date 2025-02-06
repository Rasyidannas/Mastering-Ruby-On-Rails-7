module UsersHelper
  def print_error(obj, field)
    return '' if obj.blank? || obj.messages.keys.blank? || field.blank? || !obj.messages.keys.include?(field)

    "<span class=\"error\">#{obj[field].uniq.join('<br>')}</span>".html_safe
  end

end
