
class User < ActiveRecord::Base
  has_many :tweets
  before_create :set_auth_token



  private
  def set_auth_token
    return if authentication.present?
    self.authentication = generate_auth_token
  end

  def generate_auth_token
    SecureRandom.uuid.gsub(/\-/,'')
  end
end
