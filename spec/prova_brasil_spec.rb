require 'rspec'
require_relative '../app/models/prova_brasil'

describe ProvaBrasil do

  before :each do
    @year = 2011
    @id_grade = 1
    @id_state = 1
    @prova_brasil = ProvaBrasil.new(@year,@id_grade,@id_state)
  end

  describe "#initialize"
  it "take the params and set them to the object" do
    @final_year = ProvaBrasil.final_year_avaiable(@year,@id_grade,@id_state)
    expect(@prova_brasil).not_to eq(nil)
    expect(@prova_brasil.instance_variable_get(:@year)).to eq(@year)
    expect(@prova_brasil.instance_variable_get(:@id_grade)).to eq(@id_grade)
    expect(@prova_brasil.instance_variable_get(:@id_state)).to eq(@id_state)
    expect(@prova_brasil.instance_variable_get(:@final_year)).to eq(@final_year)
  end

  describe "#final_year_avaiable"
    it "take the state, grade and year and return the final year avaiable for the current prova_brasil" do
      @final_year = ProvaBrasil.final_year_avaiable(@year,@id_grade,@id_state)
      expect(@final_year).to eq("2011")
    end

  describe "#compute_variance"
    it "Verify if the variance calculus is correct" do
      variance = @prova_brasil.compute_variance([0.0,3.6,5.6,6.6,6.6,7.0,8.6,9.6])
      expect(variance.round(4)).to eq(7.9175)
    end

  

end