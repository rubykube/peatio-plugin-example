module MyPlugin
  VERSION = '1.0.0'

  class Engine < Rails::Engine
    isolate_namespace MyPlugin

    # Ensure plugin is compatible with Peatio.
    config.before_initialize do
      if Peatio::VERSION < '1.4' || Peatio::VERSION > '1.5'
        Kernel.abort "This plugin is designed to work only on Peatio 1.4.x. You have #{Peatio::VERSION}."
      end
    end

    # Mount new API resource in hook (friendly with development environment).
    # More about configuration stages: http://guides.rubyonrails.org/configuring.html#configuring-action-dispatch
    config.to_prepare do
      APIv2::Mount.mount APIv2::Alphabet
    end
  end
end
