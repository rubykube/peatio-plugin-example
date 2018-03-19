module MyPlugin
  class Railtie < Rails::Railtie
    config.before_configuration do
      if Peatio::VERSION < '1.4' || Peatio::VERSION >= '1.5'
        Kernel.abort "This plugin is designed to work only on Peatio 1.4.x. You have #{Peatio::VERSION}."
      end
    end
  end
end
