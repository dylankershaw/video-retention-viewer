require 'rails_helper'
require 'spec_helper'

RSpec.describe "video/show", type: :view do
  before(:all) do
    Video.delete_all
    
    @first_video = Video.create
    @last_video = Video.create
  end

  it 'displays "next video" when not on the last video'
  it 'displays "previous video" when not on the first video'
  it 'does not display "next video" when on the last video'
  it 'does not display "previous video" when on the first video'
end
