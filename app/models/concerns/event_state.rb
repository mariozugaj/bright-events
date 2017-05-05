module EventState
  extend ActiveSupport::Concern

  included do
    def self.past(limit = nil)
      where('date_and_time < ?', Time.zone.now).limit(limit)
    end

    def past?
      date_and_time < Time.zone.now
    end

    def self.upcoming(limit = nil)
      where('date_and_time > ?', Time.zone.now).limit(limit)
    end

    def upcoming?
      date_and_time > Time.zone.now
    end
  end
end
