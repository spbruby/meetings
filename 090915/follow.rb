Shoes.app do
  @points = [[0, 0, 0]] * 60
  
  animate(60) do
    @points.shift
    @points << self.mouse

    clear
    
    background rgb(
      20 + (70 * (@points.last[1].to_f / self.width)).to_i, 
      20 + (70 * (@points.last[2].to_f / self.height)).to_i,
      51)

    @points.each_with_index do |point, i|
      oval :left => point[1], :top => point[2], :radius => (i*0.5), :center => true
    end
  end

end
