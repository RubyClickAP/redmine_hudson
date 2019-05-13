# $Id: 007_create_hudson_build_test_results.rb 403 2009-12-05 04:17:10Z toshiyuki.ando1971 $

#class CreateHudsonBuildTestResults < ActiveRecord::Migration
class CreateHudsonBuildTestResults < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    create_table :hudson_build_test_results do |t|
      t.column :hudson_build_id, :integer
      t.column :fail_count, :integer
      t.column :skip_count, :integer
      t.column :total_count, :integer
    end
  end

  def self.down
    drop_table :hudson_build_test_results
  end
end
