require 'rails_helper'
include ApplicationHelper

RSpec.describe StaticPagesHelper, :type => :helper do
  describe "first_static_page_html" do
    it "returns html in SafeBuffer " do
      expect(first_static_page_html.class).to eq(ActiveSupport::SafeBuffer)
    end
  end
  describe "first_static_page_script" do
    it "returns script in SafeBuffer " do
      expect(first_static_page_script.class).to eq(ActiveSupport::SafeBuffer)
    end
    it "returns an html-script-tag" do
      expect(first_static_page_script[0..7]).to eq("<script>")
      expect(first_static_page_script[-9..-1]).to eq("</script>")
    end
  end
  describe "first_static_page_styles" do
    it "returns an html-style-tag" do
      expect(first_static_page_styles[0..6]).to eq("<style>")
      expect(first_static_page_styles[-8..-1]).to eq("</style>")
    end
    it "returns html-style-tag in SafeBuffer " do
      expect(first_static_page_styles.class).to eq(ActiveSupport::SafeBuffer)
    end
  end
end