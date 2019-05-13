# $Id: 019_add_url_for_plugin_to_hudson_settings.rb 477 2010-03-27 16:45:28Z toshiyuki.ando1971 $

#class AddUrlForPluginToHudsonSettings < ActiveRecord::Migration
class AddUrlForPluginToHudsonSettings < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    add_column :hudson_settings, :url_for_plugin, :string, :default => ""
  end

  def self.down
    remove_column :hudson_settings, :url_for_plugin
  end
end
