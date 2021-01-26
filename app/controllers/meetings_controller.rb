class MeetingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    # before_action :authenticate_user!

    def index
      meetings = Meeting.all
      render json: meetings
    end

    def new
      respond_to do |format|
        format.html
        format.js
      end
    end
    def show
      meeting = Meeting.all

    end

    def create
      meeting = Meeting.new
      meeting.title = meeting_params['title']
      meeting.time_meeting = meeting_params['time_meeting']
      meeting.start_date = meeting_params['start_date']
      meeting.end_date = meeting_params['end_date']
      meeting.start_time = meeting_params['start_time']
      meeting.end_time = meeting_params['end_time']
      meeting.user_id = 1
      meeting.save!
      p meeting
    end

    def destroy
      meeting = Meeting.find(params[:id])
      meeting.destroy
    end
    private
    def meeting_params
      params.require(:meeting).permit( :title, :time_meeting, :start_date, :end_date, :start_time, :end_time)
    end
end
