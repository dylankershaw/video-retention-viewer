class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        
        views = View.where(["video_id = ? and date > ?", params[:id], 30.days.ago])
        
        @data = {
            "first quarter" => views.select { |view| view.completion < 0.25 }.count,
            "second_quarter" => views.select { |view| view.completion >= 0.25 && view.completion < 0.5 }.count,
            "third_quarter" => views.select { |view| view.completion >= 0.5 && view.completion < 0.75 }.count,
            "fourth_quarter" => views.select { |view| view.completion >= 0.75 }.count
        }
    end
end