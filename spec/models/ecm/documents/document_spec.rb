require 'spec_helper'

module Ecm
  module Documents
    describe Document do
      subject { FactoryGirl.create :ecm_documents_document }

      context "acts as markup" do
        subject { FactoryGirl.create(:ecm_documents_document, :description => 'h1. This is a heading') }      
        
        it { should validate_presence_of(:markup_language) }   
         
        %w(markdown textile rdoc).each do |value|
          it { should allow_value(value).for(:markup_language) }
        end

        %w(some other values that are not allowed).each do |value|
          it { should_not allow_value(value).for(:markup_language) }
        end  
        
        context "description.to_html" do
          specify { subject.description.to_html.should eq("<h1>This is a heading</h1>") }
        end
      end

      context "associations" do
        it { should have_many :ecm_documents_documenteds }
      end

      context "friendly id" do
        subject { FactoryGirl.create(:ecm_documents_document, :name => 'Look, a slugged document!') }
        its(:to_param) { should eq('look-a-slugged-document') }
      end

      context "paperclip" do
        it { should respond_to :asset }
      end
    end
  end
end
