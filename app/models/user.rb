class User < ApplicationRecord
  after_create :send_admin_mail

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

def send_admin_mail
  UserMailer.send_welcome_email(self).deliver_later
end
end
