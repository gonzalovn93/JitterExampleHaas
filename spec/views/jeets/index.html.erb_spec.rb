require 'rails_helper'

RSpec.describe "jeets/index", type: :view do
  before(:each) do
    assign(:jeets, [
      Jeet.create!(
        content: "Content",
        string: "String"
      ),
      Jeet.create!(
        content: "Content",
        string: "String"
      )
    ])
  end

  it "renders a list of jeets" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("String".to_s), count: 2
  end
end
