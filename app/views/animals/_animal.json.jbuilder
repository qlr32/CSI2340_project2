json.extract! animal, :id, :name, :species, :breed, :age, :intake_date, :adopted, :notes, :created_at, :updated_at
json.url animal_url(animal, format: :json)
