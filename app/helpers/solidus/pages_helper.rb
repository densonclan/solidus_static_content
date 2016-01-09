module Spree
  module PagesHelper
    def render_snippet(slug)
      page = Solidus::Page.find_by_slug(slug)
      raw page.body if page
    end
  end
end
