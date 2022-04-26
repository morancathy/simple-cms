class Page < ApplicationRecord

  belongs_to :subject, {:optional => false}   #video has the optional false, but i didnt?
  has_and_belongs_to_many :admin_users
  # has_and_belongs_to_many :admin_users, :join_table => "pages_admin_users"    if didn't use naming conventions(not alphabeticl)
  has_many :sections

end
