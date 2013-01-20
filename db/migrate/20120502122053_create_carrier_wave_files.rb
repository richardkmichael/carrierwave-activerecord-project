class CreateCarrierWaveFiles < ActiveRecord::Migration
  def change
    create_table :carrier_wave_files do |t|
      t.string :identifier
      t.string :filename
      t.binary :data

      t.timestamps
    end
  end
end
