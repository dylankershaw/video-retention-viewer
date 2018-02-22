class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        
        views = View.where(["video_id = ? and date > ?", params[:id], 30.days.ago])
        
        @data = {
            "0% - 25%" => views.select { |view| view.completion < 0.25 }.count,
            "25% - 50%" => views.select { |view| view.completion >= 0.25 && view.completion < 0.5 }.count,
            "50% - 75%" => views.select { |view| view.completion >= 0.5 && view.completion < 0.75 }.count,
            "75% - 100%" => views.select { |view| view.completion >= 0.75 }.count
        }
    end
end