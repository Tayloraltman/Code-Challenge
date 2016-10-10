
class User < ActiveRecord::Base
	
  before_create :set_auth_token
  has_many :tweets

  def create
  	@user =  User.new
  end
  private
  def set_auth_token
    
    @authentication = generate_auth_token
  end

  def generate_auth_token
    SecureRandom.uuid.gsub(/\-/,'')
  end
end
