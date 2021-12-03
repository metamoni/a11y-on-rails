module SvgHelper
  def inline_svg(filename, options = {})
    parse_file(filename) if options.empty?

    svg = svg_from_file(filename)
    update_svg_attributes(svg, options)

    if options[:title].present?
      update_svg_role(svg, 'img')
      svg = build_with_title(svg, options[:title])
    else
      update_svg_role(svg, 'presentation')
    end

    svg.to_html.html_safe
  end

  private

  def read_file(filename)
    File.read(Rails.root.join('app', 'assets', 'images', filename))
  end

  def parse_file(filename)
    file = read_file(filename)
    Nokogiri::HTML::DocumentFragment.parse(file)
  end

  def svg_from_file(filename)
    doc = parse_file(filename)
    doc.at_css('svg')
  end

  def update_svg_attributes(svg, options)
    svg['class'] = options[:class] if options[:class].present?
    svg['style'] = options[:style] if options[:style].present?
    svg['viewBox'] = options[:viewbox] if options[:viewbox].present?
  end

  def build_with_title(svg, title)
    svg_tag = svg.to_s.match(/<svg .*/)
    svg_title = "<title>#{title}</title>"
    svg_with_title = svg_tag.to_s + svg_title + svg.children.to_s + "</svg>"
    Nokogiri::HTML::DocumentFragment.parse(svg_with_title)
  end

  def update_svg_role(svg, role)
    svg['role'] = role
  end
end
