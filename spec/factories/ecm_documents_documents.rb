FactoryGirl.define do
  factory :ecm_documents_document, :class => Ecm::Documents::Document do
    asset { File.open(Ecm::Documents::Engine.root + "spec/files/ecm/documents/document/example.txt") }
  end
end
