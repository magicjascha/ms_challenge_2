require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do
  describe "contentful" do
    it "returns a contentful client" do
      content = contentful
      expect(content.class).to eq(Contentful::Client)
    end
  end
end