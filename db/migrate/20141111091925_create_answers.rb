class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.references :team_member, index: true

      t.timestamps
    end
  end
end
