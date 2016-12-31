class Admin < ApplicationRecord
  enum role: { :full_access => 0, :restricted_access => 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :with_full_access, -> { where(role: 0) }
  scope :with_restricted_access, -> { where(role: 1) }

  # def description_role
  #   if self.role == 'full_access'
  #     'Acesso completo'
  #   else
  #     'Acesso restrito'
  #   end
  # end

end
