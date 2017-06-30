# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Scavgather.Repo.insert!(%Scavgather.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Scavgather.Repo
alias Scavgather.Question

Repo.insert!(%Question{
  prompt: "Scav.. and Gather.. Make ScavGather!! That's the only thing that makes sense in the whole _ _ _ _ _ _ _ ?",
  answer: "winthrop",
  pic: "Adi_Washington_DC_State_Plaza_Hotel.JPG",
  reward: "A Cute little Good Luck Piggie! From Chile"
})

Repo.insert!(%Question{
  prompt: "This pic was taken at _ _ _ _ _ _ _",
  answer: "concord",
  pic: "Susan_Concord_NH_Hotel_Centennial.JPG",
  reward: "Spindle Ornament from India"
})

Repo.insert!(%Question{
  prompt: "What time did we start dating on July 25th?",
  pic: "Susan_Adi_Concord_NH.JPG",
  answer: "7 pm",
  reward: "For this... You can have my heart.. It's a heart paperweight from Kenya!"
})

Repo.insert!(%Question{
  prompt: "What place is this: _ _ _ _ _ - _ _ _ _ _ - _ _ _ _ _",
  pic: "State_Plaza_Hotel_Washington_DC.JPG",
  answer: "state plaza hotel",
  reward: "A Little Cat Purse from my home country.."
})

Repo.insert!(%Question{
  prompt: "Pizza for breakfast, Pizza for dinner. Ain't nobody cares about being _ _ _ _ _ _ _",
  answer: "thinner",
  pic: "IMG_1334.JPG",
  reward: "Another Cat gift! A Kitty Eye Pillow!! From Mt Everest's home country.."
})

Repo.insert!(%Question{
  prompt: "What is my favorite restaurant in Boston area: (starts with a 'D')",
  pic: "Susan_Adi_Concord_NH_Hotel_Centennail.JPG",
  answer: "dosa and curry",
  reward: "You deserve a kiss! And a cute little recycled paper apple box from Vietnam"
})

Repo.insert!(%Question{
  prompt: "What place is this: _ _ _ _ _ _ _ - _ _ _ _ _ _ _",
  pic: "Renwick_Gallery_Washington_DC.JPG",
  answer: "renwick gallery",
  reward: "A Sloped Jar from a Pottery in Indonesia"
})

Repo.insert!(%Question{
  prompt: "You are a: (7 words)",
  answer: "nice little cute sweet soft kind veganaby",
  pic: "IMG_1270.JPG",
  reward: "A token of love basket as a Token of my love for my token of love! :* :*. This is from Cameroon.."
})

Repo.insert!(%Question{
  prompt: "What do you think this is: _ _ _ - _ _ _ _ ",
  answer: "h1b visa",
  pic: "IMG_2434.JPG",
  reward: "I got my VISA!!! But, it still isn't time yet, but I'd like to pretend that we are married for the next few questions, if you don't mind.. So, here is a plastic ring for you, love! "
})

Repo.insert!(%Question{
  prompt: "Where is the top most stone from?: _ _ _ _ _ _ ",
  answer: "mumbai",
  pic: "Bombay_Rock_Natural_History_Museum_Washington_DC.JPG",
  reward: "The stone was from India and so is this mystic bag. You can store gold coins in it ;)"
})

Repo.insert!(%Question{
  prompt: "This is the Last Question.. And I will ask this myself!",
  answer: "----",
  pic: "IMG_1304.JPG",
  reward: "THE Ring!"
})
