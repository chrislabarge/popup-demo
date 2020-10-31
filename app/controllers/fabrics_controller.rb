class FabricsController < ApplicationController
  def index
    @collection = (0...10).to_a.map do |index|
      name = "fabric_#{index}"
      date = Time.now.send("-", 5.days)

      Fabric.new(
        name: name,
        image_url: "/#{name}.jpg",
        created_at: date,
      )
    end
  end
end
