# $Id: 002_add_show_compact.rb 175 2009-06-27 15:42:20Z toshiyuki.ando1971 $
#class AddShowCompact < ActiveRecord::Migration
class AddShowCompact < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    add_column :hudson_settings, :show_compact, :boolean, :default => false
  end

  def self.down
    remove_column :hudson_settings, :show_compact
  end
end
