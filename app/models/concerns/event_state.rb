module EventState
  extend ActiveSupport::Concern

  included do
    def self.past
      where('date < ?', Time.zone.now)
    end

    def past?
      date < Time.zone.now
    end

    def self.upcoming
      where('date > ?', Time.zone.now)
    end

    def upcoming?
      date > Time.zone.now
    end
  end
end
