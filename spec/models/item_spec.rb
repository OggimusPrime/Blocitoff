require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Item#days_left' do
    it 'returns the 3 days left' do
      # Create a fake item include a created at date, return 3
      @item = create(:item, created_at: Time.now - 4.days)

      expect(@item.days_left).to eq(3)
    end

    it 'returns -7 days left' do
      @item = create(:item, created_at: Time.now - 14.days)

      expect(@item.days_left).to eq(-7)
    end

    it 'returns 10 days left' do
      @item = create(:item, created_at: Time.now + 3.days)

      expect(@item.days_left).to eq(10)
    end

    it 'returns 0 days left' do
      @item = create(:item, created_at: Time.now - 1.week)

      expect(@item.days_left).to eq(0)
    end
  end
end
