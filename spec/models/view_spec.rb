require 'rails_helper'

RSpec.describe View, type: :model do
  subject {
    described_class.create(
      user: User.create,
      video: Video.create,
      date: Time.now,
      completion: 0.5
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a video" do
    subject.video = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a completion" do
    subject.completion = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a completion greater than 1" do
    subject.completion = 1.5
    expect(subject).to_not be_valid
  end
end
