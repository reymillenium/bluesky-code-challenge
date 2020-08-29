module Reports
  class EventsController < ::ApplicationController
    include CommonControl

    def speakers
      @event = Event.find events_params[:event_id]

      @speakers = @event.speakers.group(:email)
    end

    def attendees
      limit = (l = params[:limit].to_i) == 0 ? 100 : l
      page = (p = params[:page].to_i) == 0 ? 1 : p
      offset = (page -1) * limit


      @event = Event.find events_params[:event_id]

      @attendees = @event.attendees.group(:email).limit(limit).offset(offset)
    end

    private

    def events_params
      params.permit(:event_id)
    end
  end
end
