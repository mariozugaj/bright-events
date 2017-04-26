module ApplicationHelper
  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = 'EventBriteClone'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def svg(filename, options = {})
    file = File.read(Rails.root.join('app', 'assets', 'images', 'icons', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    svg['class'] = options[:class] if options[:class].present?
    doc.to_html.html_safe
  end
end
