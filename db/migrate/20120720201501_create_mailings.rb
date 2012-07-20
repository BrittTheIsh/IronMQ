class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|
      t.string      :to
      t.string      :subject
      t.text        :body
      t.timestamps
    end
  end
end
