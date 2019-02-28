class CreateGamesApps < ActiveRecord::Migration[5.2]
  def change
    create_table :games_apps do |t|

      t.timestamps
    end
  end
end
