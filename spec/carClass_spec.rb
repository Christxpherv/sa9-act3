require "carClass"

RSpec.describe Car do
  describe "#set_price" do
    it "updates the price of the car" do
      car = Car.new("Honda", "Accord", "Red", 24000)
      car.set_price(500)
      expect(car.price).to eq(24500)
      expect { car.set_price(500) }.to output("the price of the car is now 25000\n").to_stdout
    end
  end

  describe "#paint" do
    it "changes the color of the car" do
      car = Car.new("Honda", "Accord", "Red", 24000)
      car.paint("Blue")
      expect(car.color).to eq("Blue")
      expect { car.paint("Blue") }.to output("painting the car Blue\n").to_stdout
    end
  end

  describe "#show_car_info" do
    it "displays the car's information" do
      car = Car.new("Honda", "Accord", "Red", 24000)
      expect { car.show_car_info }.to output("make: Honda\nmodel: Accord\ncolor: Red\nprice: 24000\nmileage: 0\n").to_stdout
    end
  end

  describe "#travel" do
    it "updates the mileage of the car" do
      car = Car.new("Honda", "Accord", "Red", 24000)
      expect { car.travel(100000) }.to output("you traveled 100000, your mileage is now at 100000 miles!\n").to_stdout
    end
  end
end
