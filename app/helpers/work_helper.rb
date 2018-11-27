module WorkHelper
  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def color_state(state)
    html = 'fill="url(#linearGradient-1)"'
    if @states.include?(state)
      return html.html_safe
    end
  end
end
