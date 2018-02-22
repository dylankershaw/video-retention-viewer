class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        
        views = View.where(["video_id = ? and date > ?", params[:id], 30.days.ago])
        
        # determine number of dropoffs for each quarter
        first_quarter = views.select { |view| view.completion < 0.25 }.count
        second_quarter = views.select { |view| view.completion >= 0.25 && view.completion < 0.5 }.count
        third_quarter = views.select { |view| view.completion >= 0.5 && view.completion < 0.75 }.count
        fourth_quarter = views.select { |view| view.completion >= 0.75 }.count

        @data = {
            "0%" => views.count,
            "50%" => second_quarter + third_quarter + fourth_quarter,
            "75%" => third_quarter + fourth_quarter,
            "100%" => fourth_quarter
        }
    end
end