class Ecm::Documents::Documented < ActiveRecord::Base
  # database settings
  self.table_name = 'ecm_documents_documenteds'

  # assocations
  belongs_to :documentable, 
             :polymorphic => true
  belongs_to :ecm_documents_document,
             :class_name => Ecm::Documents::Document,
             :foreign_key => :ecm_documents_document_id

  # attributes
  attr_accessible :ecm_documents_document,
                  :documentable

  # validations
  validates :ecm_documents_document,
            :presence => true
  validates :ecm_documents_document_id,
            :uniqueness => { :scope => [ :documentable_type, :documentable_id ] }
#   validates :documentable_id 
#             :presence => true,
            
end

