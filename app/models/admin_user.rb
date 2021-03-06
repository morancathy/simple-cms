class AdminUser < ApplicationRecord
  # self.table_name = "admin_users"    could have done it this way instead of changing class and file name
  has_and_belongs_to_many :pages

  has_many :section_edits
  has_many :sections, :through => :section_edits
  
  has_secure_password
end
