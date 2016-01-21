class Property < ActiveRecord::Base
  belongs_to :type
  belongs_to :publisher
  has_many :galleries
  def self.view_all
  	$is_view_all=true
  	all.order('created_at DESC')
  end
  def self.view_limit(number)
  	$is_view_all=false
  	all.order('created_at DESC').take(number)
  end
  def view_all?
  	return $is_view_all
  end
end
