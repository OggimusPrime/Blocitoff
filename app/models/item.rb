class Item < ActiveRecord::Base
  belongs_to :list

  default_scope { order('created_at') }

  def days_left
    (7 - (DateTime.now.to_date - created_at.to_date)).to_i
  end
end
