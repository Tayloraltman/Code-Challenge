class Tweet < ApplicationRecord
	#before_create assign_user_id
	attr_accessor :user_id
	belongs_to :user


	# def assign_user_id
	# 	@user_id = User.find(:id)
	# end
end
