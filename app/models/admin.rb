class Admin < ApplicationRecord
  enum role: [:full_access, :restricted_access]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def description_role
    if self.role == 'full_access'
      'Acesso completo'
    else
      'Acesso restrito'
    end
  end

end
