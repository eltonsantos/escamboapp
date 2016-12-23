namespace :utils do
  
  desc "Cria administradores fake"
  task generate_admins: :environment do
    puts "Cadastrando administradores..."

    10.times do |i|
      Admin.create!(email: Faker::Internet.email, password: "12345678", password_confirmation: "12345678")
    end

    puts "ADMINISTRADORES cadastrados com sucesso!"
  end

end
