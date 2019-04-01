module RailsVueJs
  # Rails VueJs View Helper
  module ViewHelper
    def rails_vue_js
      content = javascript_include_tag(vue_js_src)
      content += javascript_include_tag('vue_router_src')
      content += javascript_include_tag('rails_vue_js')
      Dir[rails_vue_path].each do |path|
        content += render file: path
      end
      content.html_safe
    end

    private

    def vue_js_src
      if Rails.env.production?
        'https://cdn.jsdelivr.net/npm/vue'
      else
        'https://cdn.jsdelivr.net/npm/vue/dist/vue.js'
      end
    end

    def vue_router_src
      'https://unpkg.com/vue-router/dist/vue-router.js'
    end

    def rails_vue_path
      Rails.root.join('app/vue/**/*.{slim,haml,erb,html}')
    end
  end
end
