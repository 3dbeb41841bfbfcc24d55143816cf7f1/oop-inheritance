require_relative ('./User.rb')
require_relative ('./AdminUser.rb')

admin_user  = AdminUser.new "tom", "johnson", 'tom@gmaillcom', "yes this is admin"
puts "information"
puts admin_user.first_name
puts admin_user.last_name
puts admin_user.email
puts admin_user.is_admin
