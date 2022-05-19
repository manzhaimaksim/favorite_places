# frozen_string_literal: true

Place.destroy_all
User.destroy_all

user_1 = User.create(name: "ДжонФедор", date_of_birth: "1990-01-01", sex: "male", status: "active", username: "fedos",
                    email: "johnfedor@example.com", password: "123456")

place_1 = user_1.places.create!(title: "Большой театр Беларуси", latitude: "53.910278", longitude: "27.561389")
place_2 = user_1.places.create!(title: "Троицкое предместье", latitude: "53.908535", longitude: "27.555985")
place_3 = user_1.places.create!(title: "Театр кукол", latitude: "53.899333", longitude: "27.563389")
