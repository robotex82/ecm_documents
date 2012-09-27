module Ecm
  module Documents
    module Generators
      class LocalesGenerator < Rails::Generators::Base
        desc "Copies the locale files to your application"

        source_root File.expand_path('../../../../../../config/locales', __FILE__)
        
        def generate_locales
          copy_file "ecm.documents.en.yml", "config/locales/ecm.documents.en.yml"
          copy_file "ecm.documents.de.yml", "config/locales/ecm.documents.de.yml"
        end   
      end
    end
  end
end        
