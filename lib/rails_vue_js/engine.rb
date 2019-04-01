module RailsVueJs
  # Rails VueJs Engine
  class Engine < ::Rails::Engine
    initializer 'rails_vue_js.engine' do |app|
      app.config.assets.precompile << %w[rails_vue_js.js]
      app.config.assets.paths << Rails.root.join('app', 'vue')
      ActionView::Base.send :include, RailsVueJs::ViewHelper
    end
  end
end
