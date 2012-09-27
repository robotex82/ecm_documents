class CreateEcmDocumentsDocumenteds < ActiveRecord::Migration
  def change
    create_table :ecm_documents_documenteds do |t|
      # associations
      t.references :documentable, :polymorphic => true
      t.references :ecm_documents_document

      t.timestamps
    end
  end
end
