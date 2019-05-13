# $Id$

#class ChangeColumnHudsonBuildNumber < ActiveRecord::Migration
class ChangeColumnHudsonBuildNumber < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    add_column :hudson_builds, :number_new, :integer
    #HudsonBuild.find(:all).each do |build|
    HudsonBuild.all.to_a.each do |build|
      build.number_new = build.number.to_i
      build.save!
    end
    remove_column :hudson_builds, :number
    rename_column :hudson_builds, :number_new, :number
  end

  def self.down
    add_column :hudson_builds, :number_old, :string
    #HudsonBuild.find(:all).each do |build|
    HudsonBuild.all.to_a.each do |build|
      build.number_old = build.number.to_s
      build.save!
    end
    remove_column :hudson_builds, :number
    rename_column :hudson_builds, :number_old, :number
  end
end
