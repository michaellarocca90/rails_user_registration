class User
  attr_accessor :username, :password, :full_name, :address, :city, :state, :zip, :country, :email

  def initialize(username, password, full_name, address, city, state, zip, country, email)
    @username = username
    @password = password
    @full_name = full_name
    @address = address
    @city = city
    @state = state
    @zip = zip
    @country = country
    @email = email
  end
end
