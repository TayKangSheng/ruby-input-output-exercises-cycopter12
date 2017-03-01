sample= "hello"

def reverse(string)
  a = string.length - 1
  letter = 1
for i in (0...a) do
  string[a+letter]=string[a-(i+1)]
  letter +=1
  end

for i in (0..a) do
  string[0] = ''
  puts string
  end
end

reverse(sample)
