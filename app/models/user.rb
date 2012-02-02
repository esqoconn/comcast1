class User
  include MongoMapper::Document
  
  key :name, String, :required => true
  key :email, String, :required => true
  key :crypted_password, String
  
  def name=(new_name)
    new_name.downcase! unless new_name.nil?
    write_attribute(:name, new_name)
  end  
  
  def email=(new_email)
    new_email.downcase! unless new_email.nil?
    write_attribute(:email, new_email)
  end
  
end
