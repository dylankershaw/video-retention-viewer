class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        
        @views = View.where(["video_id = ? and date > ?", params[:id], 30.days.ago])

        @data = {
            "0%" => @views.count,
            "25%" =>  @views.select { |view| view.completion >= 0.25 }.count,
            "50%" => @views.select { |view| view.completion >= 0.5 }.count,
            "75%" => @views.select { |view| view.completion >= 0.75 }.count,
            "100%" => @views.select { |view| view.completion === 1 }.count
        }
    end
end