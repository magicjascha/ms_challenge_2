module StaticPagesHelper
  def first_static_page_html
    staticpages = contentful.entries(content_type: 'staticPage')
    staticpages.items[1].fields[:body].html_safe
  end

  def first_static_page_script
    staticpages = contentful.entries(content_type: 'staticPage')
    staticpages.items[1].fields[:javascript].html_safe
  end

  def first_static_page_styles
    staticpages = contentful.entries(content_type: 'staticPage')
    "<style>#{staticpages.items[1].fields[:css]}</style>".html_safe
  end
end

