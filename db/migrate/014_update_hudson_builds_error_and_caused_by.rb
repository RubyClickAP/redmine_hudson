# $Id: 013_update_building.rb 338 2009-10-11 05:52:52Z toshiyuki.ando1971 $

#require 'hudson_build'

#class UpdateHudsonBuildsErrorAndCausedBy < ActiveRecord::Migration
class UpdateHudsonBuildsErrorAndCausedBy < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    HudsonBuild.update_all({ error: '', error: 'error IS NULL'})
    HudsonBuild.update_all({ caused_by: 1, caused_by: 'caused_by IS NULL'})
  end

  def self.down
  end
end
