require 'rails/generators'

module RailsVueJs
  module Generators
    # Rails VueJs install generator
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def install
        copy_file 'rails_vue_js.js', 'app/vue/rails_vue_js.js'
        copy_file 'rails_vue_js.css', 'app/vue/rails_vue_js.css'
        empty_directory 'app/vue/mounted'
        empty_directory 'app/vue/components'
        empty_directory 'app/vue/pages'
        empty_directory 'app/vue/routes'
      end
    end
  end
end
