# frozen_string_literal: true

Place.destroy_all
User.destroy_all

user = User.create(name: "ДжонФедор", date_of_birth: "1990-01-01", sex: "male", status: "active", username: "fedos",
                   email: "johnfedor@example.com", password: "123456")

Place.create!([
                {"user_id": user.id, "title": "Buckingham Palace", "latitude": "51.501564", "longitude": "-0.141944"},
                {"user_id": user.id, "title": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
                {"user_id": user.id, "title": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
              ])
