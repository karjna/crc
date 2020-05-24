module WorkHelper
  def show_svg(path)
    File.open("app/assets/images/states/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def color_state(state)
    html = 'fill="#704c9f" class="svg__filled"'
    if @states.include?(state)
      return html.html_safe
    end
  end
end
