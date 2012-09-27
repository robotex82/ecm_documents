require 'spec_helper'

module Ecm
  module Documents
    describe Documented do
      subject { FactoryGirl.create :ecm_documents_documented }

      context "associations" do
        it { should belong_to :documentable }
        it { should belong_to :ecm_documents_document }
      end

      context "validations" do
        # it { should validate_presence_of :documentable }
        it { should validate_presence_of :ecm_documents_document }
        it { should validate_uniqueness_of(:ecm_documents_document_id).scoped_to(:documentable_type, :documentable_id) }
      end
    end
  end
end
