# frozen_string_literal: true

module DiscourseEvents
  class Log < ActiveRecord::Base
    self.table_name = 'discourse_events_logs'

    enum level: [ :info, :error ]
    enum context: [ :import, :sync, :auth ]

    validates :message, presence: true
    validates :level, presence: true
  end
end

# == Schema Information
#
# Table name: discourse_events_logs
#
#  id            :bigint           not null, primary key
#  log_type      :integer
#  message       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_discourse_events_logs_on_resource  (resource_type,resource_id)
#
