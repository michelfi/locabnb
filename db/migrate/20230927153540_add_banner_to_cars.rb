class AddBannerToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :banner, :string
  end
end
