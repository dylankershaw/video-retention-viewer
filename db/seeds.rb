100.times do
    User.create
end

10.times do
    Video.create
end

def createViews(num, min, max)
    num.times do
        View.create(
            user_id: rand(User.first.id..User.last.id),
            video_id: rand(Video.first.id..Video.last.id),
            date: Time.at(rand(Time.new(2018).to_i..Time.now.to_i)),
            completion: (rand(min..max) / 100).round(2)
        )
    end
end

# 0% - 25% completions
createViews(400, 0, 24.9)

# 25% - 50% completions
createViews(300, 25.0, 49.9)

# 50% - 75% completions
createViews(200, 50.0, 74.9)

# 75% - 100% completions
createViews(100, 75.0, 100.0)