class CreateEcmDocumentsDocuments < ActiveRecord::Migration
  def change
    create_table :ecm_documents_documents do |t|
      t.string :name
      t.text :description

      # paperclip
      t.string :asset_file_name
      t.integer :asset_file_size
      t.string :asset_content_type
      t.timestamp :asset_updated_at
      t.string :asset_fingerprint

      # acts as markup
      t.string :markup_language

      # friendly id
      t.string :slug

      t.timestamps
    end
  end
end
