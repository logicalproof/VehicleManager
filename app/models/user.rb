class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :vehicle_assignments
  has_many :vehicles, :through => :vehicle_assignments

  ROLES = %i[admin supervisor driver]

  def admin?
  	self.role == "admin"
  end

  def supervisor?
  	self.role == "supervisor"
  end

  def driver?
  	self.role == "driver"
  end

end
