module SolidusImportProducts
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false
      class_option :auto_skip_migrations, type: :boolean, default: false

      def self.source_paths
        paths = superclass.source_paths
        paths << File.expand_path('../templates', "../../#{__FILE__}")
        paths << File.expand_path('../templates', "../#{__FILE__}")
        paths << File.expand_path('../templates', __FILE__)
        paths.flatten
      end

      def add_migrations
        if !options[:auto_skip_migrations]
          run 'bundle exec rake solidus_import_products:install:migrations'
        else
          puts 'Skipping rake solidus_import_products:install:migrations, don\'t forget to run it!'
        end

      end

      def add_files
        template 'config/initializers/solidus_import_product_settings.rb', 'config/initializers/solidus_import_product_settings.rb'
      end

      def run_migrations
        run_migrations =  options[:auto_skip_migrations] ||
                          options[:auto_run_migrations] ||
                          ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))

        if run_migrations && !options[:auto_skip_migrations]
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
