class FabricsController < ApplicationController
  def index
    @collection = (1..5).to_a.map do |index|
      name = "fabric_#{index}"
      date = Time.now.send("-", index.send(:days))

      Fabric.new(
        name: name,
        image_url: "/#{name}.jpg",
        created_at: date,
      )
    end
  end
end
