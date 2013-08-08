class Request < ActiveRecord::Base
  belongs_to :user

  attr_accessible :address1, :address2, :city, :country, :first_name, :last_name, :middle_initial, :phone, :state, :user, :zip
end
