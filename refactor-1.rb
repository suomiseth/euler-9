class PythProduct

  def initialize(target)
    @c_up_2 = target
  end

  def find_triplet
    (1..@c_up_2).each do |a|
      (a..@c_up_2).each do |b|
        (b..@c_up_2).each do |c|
          return [a, b, c] if a + b + c == @c_up_2 && a ** 2 + b ** 2 == c ** 2
        end
      end
    end
  end

  def triplet_product
    find_triplet.inject(:*)
  end
end

puts "what is your target"
target = gets.strip.to_i
puts "answer is: #{PythProduct.new(target).triplet_product}"

# 31875000