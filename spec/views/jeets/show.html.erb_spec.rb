require 'rails_helper'

RSpec.describe "jeets/show", type: :view do
  before(:each) do
    assign(:jeet, Jeet.create!(
      content: "Content",
      string: "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/String/)
  end
end
