json.event @event, partial: 'event', as: :event
# json.conferences @event.conferences, partial: 'conference', as: :conference
json.conferences @conferences, partial: 'conference', as: :conference
