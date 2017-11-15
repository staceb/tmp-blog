module ApplicationHelper
  def tb_link_button(text, path, octicon_name, extra_class: nil, **options)
    link_to(path, class: ["tb-button", extra_class], **options) do
      concat(octicon(octicon_name))
      concat(" ")
      concat(text)
    end
  end

  def tb_submit_button(form, text, octicon_name)
    form.button(class: "tb-button", type: "submit") do
      concat(octicon(octicon_name))
      concat(" ")
      concat(text)
    end
  end
end
