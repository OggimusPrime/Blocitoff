require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  before do
    @user = create(:user)
  end

  describe 'Lists#create' do
    it 'returns http success' do
      post :create, user_id: @user
      expect(response).to be_redirect
    end
  end
end
