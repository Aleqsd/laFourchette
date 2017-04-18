Restaurant.destroy_all

def open_photo(name)
  File.open(Rails.root.join("db", "restaurant-images", name))
end

resto = Restaurant.create!(name: "Aux Petits Oignons",
  city: "Aix-en-Provence", photo: open_photo("aux-petits-oignons.jpg"))

resto = Restaurant.create!(name: "Via Italia",
  city: "Aix-en-Provence", photo: open_photo("via-italia.jpg"))

resto = Restaurant.create!(name: "Rowing Club",
  city: "Marseille", photo: open_photo("rowing-club.jpg"))


  User.destroy_all

  user = User.create!(email: "colin@darie.eu", password: "password")

  # ajouter cet user à chaque restaurant créé :
  resto = Restaurant.create!(
    name: "Aux Petits Oignons",
    user: user,
    city: "Aix-en-Provence",
    photo: open_photo("aux-petits-oignons.jpg")
  )
