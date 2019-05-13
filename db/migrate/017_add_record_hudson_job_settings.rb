# $Id$

#class AddRecordHudsonJobSettings < ActiveRecord::Migration
class AddRecordHudsonJobSettings < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def self.up
    #HudsonJob.find(:all).each do |job|
    HudsonJob.all.to_a.each do |job|
      settings = HudsonJobSettings.new
      settings.hudson_job_id = job.id
      settings.save!
    end
  end

  def self.down

  end
end
