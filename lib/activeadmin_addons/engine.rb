module ActiveAdminAddons
  module Rails
    class Engine < ::Rails::Engine
      require "select2-rails"
      require "xdan-datetimepicker-rails"
      require "require_all"

      initializer "initialize addons" do |app|
        require_rel "support"
        require_rel "addons"
        require_rel "active_admin_config.rb"
        app.config.assets.precompile += %w(select.scss fileicons/*.png switches/switch_*.png)
      end
    end
  end
end
