# Practice problem 1

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]

# Practice problem 2

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2

# Practice problem 3

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]

# Practice problem 4

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

# Practice problem 5

hash = { a: 'ant', b: 'bear' }
hash.shift

# => [:a, "ant"]

# Practice problem 6

['ant', 'bear', 'caterpillar'].pop.size

# => 11

# Practice problem 7

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true

# Practice problem 8

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => [1, 2]

# Practice problem 9

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"]

# Practice problem 10

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
