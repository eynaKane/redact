loop do
  new_text = []
  print "\n\n-----\nEnter original text:  "
  text = gets.chomp.split(' ')

  break if text.join =~ /exit/i

  print 'Words to be redacted: '
  redact = gets.chomp.downcase.split(' ')

  break if redact.join =~ /exit/i

  text.each do |t|
    if redact.include?(t.downcase)
      new_text << 'REDACTED '
    else
      new_text << t + ' '
    end
  end
  print "\nNEW TEXT: #{new_text.join}"
end
