class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.string :title
      t.text :content
      t.references :enterprise, foreign_key: true

      t.timestamps
    end
  end
end
