# Initiate user accounts
if User.first.nil?
  admin =  User.new({
    name: 'Admin User',
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password'
    })
  admin.confirm!
  admin.save
  admin.add_role :admin

  user =  User.new({
    name: 'John Doe',
    email: 'johndoe@example.com',
    password: 'password',
    password_confirmation: 'password'
    })
  user.confirm!
  user.save
end
