class AddThreeMovies < ActiveRecord::Migration[8.0]
  DESCRIPTIONS = [
    "A thrilling adventure of a young hero.",
    "A romantic comedy set in New York City.",
    "A documentary about the wonders of the ocean."
  ]

  def up
    DESCRIPTIONS.each do |description|
      Movie.find_or_create_by!(description: description)
    end
  end

  def down
    DESCRIPTIONS.each do |description|
      Movie.find_by(description: description)&.destroy
    end
  end
end
