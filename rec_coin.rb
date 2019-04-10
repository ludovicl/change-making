def rec_coin(expected_number, coins)
  raise ArgumentError if expected_number.class != Integer || coins.class != Array
  coins_to_render = []
  coins.sort.reverse.each { |coin| ((expected_number - coins_to_render.sum) / coin).times { coins_to_render << coin } }
  raise "Not enough coin" if coins_to_render.sum != expected_number
  coins_to_render.size
end