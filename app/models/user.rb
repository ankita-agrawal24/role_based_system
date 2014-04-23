class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :check_domain
  enum role: [:business , :manager, :employee]
  
  scope :managers, ->(domain){where("role_type like 'manager' && domain = ?",domain)}

  def business?
    true if self.role_type == "business"
  end

  def manager?
    true if self.role_type == "manager"
  end

  private

  def check_domain
    domain = self.email.split("@").last
    if User.where("domain = ?",domain).any?
       self.role_type = :employee
    else
       self.role_type = :business
    end 
  end

end
