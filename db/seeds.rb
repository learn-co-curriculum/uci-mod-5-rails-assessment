Pet.destroy_all
Owner.destroy_all

owners = [
  {name:"Sam", address: "12 Garden Road" },
  {name:"Cindi", address: "5 Garden Road" },
  {name:"Frank", address: "11 Terrace Heights" },
  {name:"Rose", address: "22 Elm Street" }
]

owners.each {|owner| Owner.create(owner)}

pets = [
  {name: "Zara", description: "Large giant shnauzer, quiet with perky ears"},
  {name: "Lola", description: "Black schnauzer with floppy ears" },
  {name:"Peach", description: "Golden retriever with a white face" },
  {name:"Harpo", description: "Long-haired dachshund, gray and white" },
  {name:"Ioni", description: "An orange hamster" },
  {name:"Emma", description: "An american shorthair cat" },
  {name:"Julia", description: "A very smart ferret" },
  {name:"Nola", description: "Himalayan Cat" },
  {name:"Jackson", description: "Dachshund" },
  {name:"Luca", description: "German Shepherd" }
]

# ---------------
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
pets = pets.map { |pet| pet.merge( { owner_id: Owner.all.sample.id } ) }


pets.each { |pet| Pet.create(pet) }