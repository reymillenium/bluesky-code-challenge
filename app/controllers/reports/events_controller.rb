module Reports
  class EventsController < ::ApplicationController
    include CommonControl

    before_action :update_api_pagination, :update_sorting

    def speakers
      @event = Event.find events_params[:event_id]
      @speakers = @event.speakers.limit(@limit).offset(@offset).order("#{@sort_column} #{@sort_direction}").group(:email)
    end

    def attendees
      @event = Event.find events_params[:event_id]
      @attendees = @event.attendees.limit(@limit).offset(@offset).order("#{@sort_column} #{@sort_direction}").group(:email)
    end

    def conferences
      @event = Event.find events_params[:event_id]
      @conferences = @event.conferences.limit(@limit).offset(@offset).order("#{@sort_column} #{@sort_direction}")
    end

    private

    def events_params
      params.permit(:event_id)
    end
  end
end
