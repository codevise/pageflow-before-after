module Pageflow
  module BeforeAfter
    class Engine < Rails::Engine
      isolate_namespace Pageflow::BeforeAfter

      config.i18n.load_path += Dir[config.root.join('config', 'locales', '**', '*.yml').to_s]

      if Rails.respond_to?(:autoloaders)
        lib = root.join('lib')

        config.autoload_paths << lib
        config.eager_load_paths << lib

        initializer 'pageflow_before_after.autoloading' do
          Rails.autoloaders.main.ignore(
            lib.join('pageflow-before-after.rb'),
            lib.join('pageflow/before_after/version.rb')
          )
        end
      else
        config.autoload_paths << File.join(config.root, 'lib')
      end
    end
  end
end
