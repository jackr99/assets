class Assets < ActiveRecord::Base

belongs_to :user
attr_accessible :title, :purchaseN, :requisition, :orderD, :location, :description
 
validates_presence_of :title, :purchaseN, :requisition, :orderD, :location, :description
validates_uniqueness_of :title,:message => 'already exists'
validates_length_of :title, :maximum => 50, :message => 'cannot be more than 50 characters'
validates_format_of :title, :with => /\A^[A-Z0-9]*\Z/i, :allow_blank => true, :message => "should only contain numbers and Letters"
end
