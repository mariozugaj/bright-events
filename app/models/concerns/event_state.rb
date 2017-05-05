module EventState
  extend ActiveSupport::Concern

  included do
    def self.past
      where('date_and_time < ?', Time.zone.now)
    end

    def past?
      date_and_time < Time.zone.now
    end

    def self.upcoming
      where('date_and_time > ?', Time.zone.now)
    end

    def upcoming?
      date_and_time > Time.zone.now
    end
  end
end
