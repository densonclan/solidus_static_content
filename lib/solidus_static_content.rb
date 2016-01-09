require 'solidus_core'
require 'solidus_static_content/engine'
require 'solidus_static_content/version'
require 'coffee_script'
require 'sass/rails'

module StaticPage
  module_function

  def remove_solidus_mount_point(path)
    regex = Regexp.new '\A' + Rails.application.routes.url_helpers.solidus_path
    path.sub(regex, '').split('?')[0]
  end
end

module Spree
  class StaticPage
    def self.matches?(request)
      return false if request.path =~ %r{\A\/+(admin|account|cart|checkout|content|login|pg\/|orders|products|s\/|session|signup|shipments|states|t\/|tax_categories|user)+}
      !Solidus::Page.visible.find_by_slug(request.path).nil?
    end
  end
end
