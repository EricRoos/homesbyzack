class Post < ActiveRecord::Base
  default_scope {order("created_at DESC")}
  scope :published, -> { where(published: true) }
end
