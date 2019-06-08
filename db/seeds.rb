users = [User.new(name:'Administrator', \
              password:'Admin1234', email:'admin@uandes.cl', \
              User_type:'administrator', phone_number: '1234567891', \
              address:'San Carlos de Apoquindo', location: 'Chile')]

for u in users do
  u.save!
end 