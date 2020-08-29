module Reports
  class ConferencesController < ::ApplicationController
    include CommonControl

    before_action :update_api_pagination, :update_sorting, only: [:attendees]

    def attendees
      @conference = Conference.find(attendee_params[:conference_id])
      @attendees = @conference.attendees.limit(@limit).offset(@offset).order("#{@sort_column} #{@sort_direction}")
    end

    private

    def attendee_params
      params.permit(:conference_id)
    end
  end
end
