class Item < ActiveRecord::Base
  belongs_to :list

  default_scope { order('created_at') }

  def days_left
    (7 - (Time.zone.now.to_date - created_at.to_date)).to_i
  end
end
