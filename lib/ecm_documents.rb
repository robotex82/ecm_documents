require 'acts_as_markup'
require 'friendly_id'
require 'paperclip'

require 'ecm/documents/engine'
require 'ecm/documents/configuration'
require 'ecm/documents/routing'

module Ecm
  module Documents
    extend Configuration
  end
end
