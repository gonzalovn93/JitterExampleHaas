require 'rails_helper'

RSpec.describe "jeets/edit", type: :view do
  let(:jeet) {
    Jeet.create!(
      content: "MyString",
      string: "MyString"
    )
  }

  before(:each) do
    assign(:jeet, jeet)
  end

  it "renders the edit jeet form" do
    render

    assert_select "form[action=?][method=?]", jeet_path(jeet), "post" do

      assert_select "input[name=?]", "jeet[content]"

      assert_select "input[name=?]", "jeet[string]"
    end
  end
end
