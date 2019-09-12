class Image
  def initialize(picture)
    @picture = picture
  end

  def output_image
    @picture.each do |data|
      puts data.join
    end
  end

  def blur
    ones = [];
    @picture.each_index {|y|
      original = @picture[y].each_index { |x|
        if @picture[y][x] == 1
          location = { "x" => x, "y" => y }
          ones.push(location)
        end
      }
    }

    ones.each_index {|idx|
      x = ones[idx]['x']
      y = ones[idx]['y']

    

      if x > 0
        @picture[y][x - 1] = 1
      end
      if x < @picture[y].length - 1
        @picture[y][x + 1] = 1
      end
      if y > 0
        @picture[y - 1][x] = 1
      end
      if y < @picture.length - 1
        @picture[y + 1][x] = 1
      end
    }
  end
end

class Image
  def initialize(picture)
    @picture = picture
  end

  def output_image
    @picture.each do |data|
      puts data.join
    end
  end

  def blur
    ones = [];
    @picture.each_index {|y|
      curr = @picture[y].each_index { |x|
        if @picture[y][x] == 1
          location = { "x" => x, "y" => y }
          ones.push(location)
        end
      }
    }

    ones.each_index {|idx|
      x = ones[idx]['x']
      y = ones[idx]['y']


      if x > 0
        @picture[y][x - 1] = 1
      end
      if x < @picture[y].length - 1
        @picture[y][x + 1] = 1
      end
      if y > 0
        @picture[y - 1][x] = 1
      end
      if y < @picture.length - 1
        @picture[y + 1][x] = 1
      end
    }
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur
image.output_image