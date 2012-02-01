class User
  include MongoMapper::Document
  
  key :email, String, :required => true
  
  def email=(new_email)
    new_email.downcase! unless new_email.nil?
    write_attribute(:email, new_email)
  end
  
end
