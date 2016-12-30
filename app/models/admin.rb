class Admin < ApplicationRecord
  enum role: { :full_access => 0, :restricted_access => 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # def description_role
  #   if self.role == 'full_access'
  #     'Acesso completo'
  #   else
  #     'Acesso restrito'
  #   end
  # end

end
