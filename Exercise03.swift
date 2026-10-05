// Exercise 03 - Dictionaries

var phoneBook: [String: String] = [
    "Ayesha": "0711111111",
    "Nimali": "0722222222",
    "Dilan": "0733333333",
    "Kasun": "0744444444"
]

// Add a new contact
phoneBook["Iresha"] = "0755555555"

// Update one phone number
phoneBook["Ayesha"] = "0766666666"

// Remove one contact
phoneBook["Kasun"] = nil

// Search for a contact
let searchName = "Ayesha"

if let phoneNumber = phoneBook[searchName] {
    print("\(searchName)'s phone number is \(phoneNumber)")
} else {
    print("Contact not found")
}

print("Phone Book: \(phoneBook)")