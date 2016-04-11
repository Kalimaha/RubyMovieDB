class AddActorsReferenceToMovie < ActiveRecord::Migration
  def change
    add_reference :movies, :actors, index: true, foreign_key: true
  end
end
