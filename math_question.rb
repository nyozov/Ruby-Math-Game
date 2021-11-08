def mathQuestion(player)
  num1 = rand(20)
  num2 = rand(20)
  puts "#{player.name}, what does #{num1} plus #{num2} equal?"
  print ">"

  answer1 = $stdin.gets.chomp
  if answer1 == (num1 + num2).to_s
    puts "Yes! You are correct."
  else
    puts "Seriously? No!"
    player.lives = player.lives - 1
    puts "#{player.name} loses 1 life."
  end
end