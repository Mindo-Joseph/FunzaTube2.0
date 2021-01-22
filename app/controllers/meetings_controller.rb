class MeetingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
      meetings = Meeting.all
      render json: meetings
    end

    def show
      meeting = Meeting.find(params[:id])
      render json: meeting
    end

    def create
      meeting = Meeting.new(meeting_params)
      meeting.save
      if meeting.save
        render json: meeting
      else
        flash[:error] = meeting.errors.full_messages
        render :'courses/index'
      end
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
