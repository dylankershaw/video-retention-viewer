class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        @views = View.where(["video_id = ? and date > ?", params[:id], 30.days.ago])
    end
end