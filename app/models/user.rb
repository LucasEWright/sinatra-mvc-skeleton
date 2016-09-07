class User < ActiveRecord::Base
		# has_many :subscriptions
		# has_many :channels, through: :subscriptions


	# def full_name
	# 	self.first_name +" "+ self.last_name
	# end

  # def subscribed?(channel_id)
  #   subcribed_channels = self.channels.map do |channel|
  #     channel.id
  #   end
  #   if subcribed_channels.include?(channel_id)
  #     return true
  #   else
  #     return false 
  #   end
  # end

  # def total_monthly_cost
  # 	self.channels.map{|channel|channel.price_per_month}.reduce(0,:+)
  # end

	def password 
  	@password ||= BCrypt::Password.new(hashed_password)
	end

	def password=(new_password)
  	@password = BCrypt::Password.create(new_password)
  	self.hashed_password = @password
	end

	def authenticate(password)
		self.password == password
	end

end