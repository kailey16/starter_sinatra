mus1 = Museum.find_or_create_by(name: "Natural History", location: "National Mall")
mus2 = Museum.find_or_create_by(name: "African American History", location: "National Mall")
mus3 = Museum.find_or_create_by(name: "National Portrait Gallery", location: "National Mall")

gue1 = Guest.find_or_create_by(name: "Kailey", age: 28, gender: "male")
gue2 = Guest.find_or_create_by(name: "Heejae", age: 24, gender: "female")
gue3 = Guest.find_or_create_by(name: "Christina", age: 29, gender: "female")

Visit.find_or_create_by(museum_id: 1, guest_id: 3)
Visit.find_or_create_by(museum_id: 3, guest_id: 3)
Visit.find_or_create_by(museum_id: 3, guest_id: 2)
Visit.find_or_create_by(museum_id: 2, guest_id: 2)
Visit.find_or_create_by(museum_id: 1, guest_id: 1)
Visit.find_or_create_by(museum_id: 3, guest_id: 1)




