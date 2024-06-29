# Create a doctor user
User.create!(
    email: 'doctor@example.com',
    password: 'password',
    password_confirmation: 'password',
    role: :doctor
)

# Create a receptionist user
User.create!(
    email: 'receptionist@example.com',
    password: 'password',
    password_confirmation: 'password',
    role: :receptionist
)

# Create some patients
5.times do |i|
    Patient.create!(
        name: "Patient #{i+1}",
        age: rand(18..80)
    )
end