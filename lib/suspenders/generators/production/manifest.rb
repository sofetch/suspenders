require "rails/generators"

module Suspenders
  module Production
    class ManifestGenerator < Rails::Generators::Base

      source_root File.expand_path(
        File.join("..", "..", "..", "..", "templates"),
        File.dirname(__FILE__),
      )

      def render_manifest
        template "app.json.erb", "app.json"
      end

      private

      def app_name
        Rails.application.class.parent_name.demodulize.underscore.dasherize
      end
    end
  end
end
