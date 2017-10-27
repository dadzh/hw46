cpus_category = Category.create(name_en: 'CPUs', name_ru: 'Процессоры')
motherboards_category = Category.create(name_en: 'Motherboards', name_ru: 'Материнки')
ram_category = Category.create(name_en: 'RAM', name_ru: 'РЭМ')
hdd_category = Category.create(name_en: 'HDDs', name_ru: 'Жесткий Диск')

fixtures_category = Category.create(name_en: 'Fixtures', name_ru: 'Остальные')

cpu = Product.create(title_en: 'Intel Core i7', title_ru: 'Интел Кор Ай7', price: 300, description_ru: Faker::Lorem.paragraph, description_en: Faker::Lorem.paragraph, category: cpus_category)
cpu.image = Rails.root.join("app/assets/images/fixtures/cpu.jpg").open
cpu.save!

ram = Product.create(title_en: '4GB DDR3 RAM', title_ru: '4ГБ ДДР3 РЭМ', price: 40,  description_ru: Faker::Lorem.paragraph, description_en: Faker::Lorem.paragraph, category: ram_category)
ram.image = Rails.root.join("app/assets/images/fixtures/ram.jpg").open
ram.save!

hdd = Product.create(title_en: '1TB Seagate HDD', title_ru:'1ТБ Сеагейт ХДД', price: 60, description_ru: Faker::Lorem.paragraph, description_en: Faker::Lorem.paragraph, category: hdd_category)
hdd.image = Rails.root.join("app/assets/images/fixtures/hdd.jpg").open
hdd.save!

mb = Product.create(title_en: 'Asus P5Q3', title_ru:'АСУС П5КУ3', price: 120, description_ru: Faker::Lorem.paragraph, description_en: Faker::Lorem.paragraph, category: motherboards_category)
mb.image = Rails.root.join("app/assets/images/fixtures/mb.jpg").open
mb.save!

50.times do
  Faker::Config.locale = :en
  product = Product.create(title_en: Faker::Commerce.product_name,
                 price: Faker::Commerce.price,
                 description_en: Faker::Lorem.paragraph,
                 description_ru: Faker::Lorem.paragraph,
                 category: fixtures_category)
  Faker::Config.locale = :ru
  product.title_ru = Faker::Commerce.product_name
  product.save!

end

user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: '12345678', password_confirmation: '12345678')
admin_user = User.create(name: 'Admin', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)
