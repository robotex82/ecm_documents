class Ecm::Documents::Document < ActiveRecord::Base
  # database settings
  self.table_name = 'ecm_documents_documents'

  # acts as markup
  acts_as_markup :language => :variable, :columns => [ :description ]

  # associations
  has_many :ecm_documents_documenteds,
           :class_name => Ecm::Documents::Documented,
           :foreign_key => :ecm_documents_document_id

  # attributes
  attr_accessible :asset_content_type,
                  :asset_file_name,
                  :asset_file_size,
                  :asset_fingerprint,
                  :asset_updated_at,
                  :description,
                  :markup_language,
                  :name,
                  :slug

  # callbacks
  after_initialize :set_defaults
  before_validation :set_name_from_asset_file_name, :if => Proc.new { |p| p.name.nil? || p.name.empty? }

  # friendly id
  extend FriendlyId
  friendly_id :name, :use => :slugged

  # paperclip
  has_attached_file :asset

  # validations
  validates_attachment_presence :asset
  validates :name, :presence => true
  validates :markup_language, :presence  => true,
                              :inclusion => Ecm::Documents::Configuration.markup_languages

  private

  def set_defaults
    if self.new_record?
      self.markup_language ||= Ecm::Documents::Configuration.default_markup_language
    end
  end

  def set_name_from_asset_file_name
    self.name = File.basename(asset_file_name, File.extname(asset_file_name)) unless asset_file_name.nil?
  end
end

