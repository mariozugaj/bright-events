module EventsHelper
  def postcard_events(events)
    (render partial: 'events/event_postcard',
            collection: events,
            as: :event) ||
              (content_tag :h3,
                           'No events found',
                           class: 'title
                                   title--center
                                   title--noevents
                                   title--skinny')
  end

  def list_events(events)
    (render partial: 'events/event_list',
            collection: events,
            as: :event) ||
              (content_tag :h3,
                           'No events found',
                           class: 'title
                                   title--center
                                   title--noevents
                                   title--skinny')
  end
end
