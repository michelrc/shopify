require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :https => "",
        :shopify_api_key => "",
        :shopify_password => "",
        :shopify_shared_secret => ""
      ),
      Account.create!(
        :https => "",
        :shopify_api_key => "",
        :shopify_password => "",
        :shopify_shared_secret => ""
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
