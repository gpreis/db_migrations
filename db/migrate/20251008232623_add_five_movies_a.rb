class AddFiveMoviesA < ActiveRecord::Migration[8.0]
  DESCRIPTIONS = [
    "An epic saga of friendship and courage.",
    "A heartwarming tale of family and love.",
    "A suspenseful mystery that keeps you guessing.",
    "A futuristic sci-fi adventure through space.",
    "A hilarious comedy that will leave you in stitches."
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
