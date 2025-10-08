class AddFiveMoviesB < ActiveRecord::Migration[8.0]
  DESCRIPTIONS = [
    "A brazilian soccer stars rising journey to fame.",
    "A chilling horror story set in a haunted mansion.",
    "A fantasy epic about a quest to save a magical kingdom.",
    "A biographical film about a legendary musician.",
    "A crime thriller involving a high-stakes heist."
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
