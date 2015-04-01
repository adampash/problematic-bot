require 'rails_helper'
require 'vcr_helper'

RSpec.describe SearchController, type: :controller do

  describe "GET #show" do
    it "returns http success", :vcr do
      get :show, username: 'adampash', category: 'nerds'
      expect(response).to have_http_status(:success)
      expect(response).to render_template("show")
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
