namespace :utils do
  
  desc "Cria administradores fake"
  task generate_admins: :environment do
    puts "Cadastrando administradores..."

    10.times do |i|
      Admin.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "12345678", password_confirmation: "12345678", role: 1)
    end

    puts "ADMINISTRADORES cadastrados com sucesso!"
  end

end
