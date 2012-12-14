
# Edit app/models/moviegoer.rb to look like this:
class Moviegoer < ActiveRecord::Base

# place a copy of the following line anywhere inside the Movie class
#  AND inside the Moviegoer class (idiomatically, it should go right
#  after 'class Movie' or 'class Moviegoer'):
  has_many :reviews

#-------mark by katrina 2012/12/06 (ch 7.2)
 # include ActiveModel::MassAssignmentSecurity
 # attr_protected :uid, :provider, :name # see text for explanation
 # def self.create_with_omniauth(auth)
 #   Moviegoer.create!(
 #     :provider => auth["provider"],
 #     :uid => auth["uid"],
 #     :name => auth["info"]["name"])
 # end
#-------mark by katrina 2012/12/06 (ch 7.2) end
end
