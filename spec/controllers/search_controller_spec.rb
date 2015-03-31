require 'rails_helper'
require 'vcr_helper'

RSpec.describe SearchController, type: :controller do

  describe "GET #show" do
    it "returns http success", :vcr do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
