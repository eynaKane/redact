loop do
  print "\n\n-----\nEnter original text:  "
  text = gets.chomp.split(' ')

  break if text.join =~ /exit/i

  print 'Words to be redacted: '
  redact = gets.chomp.downcase.split(' ')

  break if redact.join =~ /exit/i

  print "\nNEW TEXT: "
  text.each do |t|
    if redact.include?(t.downcase)
      print 'REDACTED '
    else
      print t + ' '
    end
  end
end
