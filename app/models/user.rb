class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  ADMIN_ROLE = 'admin'
  CLIENT_ROLE = 'client'

  def is_admin?
    role.eql? ADMIN_ROLE
  end

  def is_client?
    role.eql? CLIENT_ROLE
  end
end
