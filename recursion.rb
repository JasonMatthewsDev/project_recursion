def fib(n)
  n < 2 ? n : fib(n - 1) + fib(n - 2)
end

def merge(a, b)
  result = []

  until a.empty? || b.empty?
    a[0] < b[0] ? (result << a.shift) : (result << b.shift)
  end

  a.empty? ? (result += b) : (result += a)

  result
end

def merge_sort(a)
  return a if a.length < 2

  b = merge_sort(a[0..a.length / 2 - 1])
  c = merge_sort(a[a.length / 2..-1])

  return merge(b, c)
end

p fib(10) #=> 55
a = (1..50).to_a.shuffle! #=> create an array of 50 values in a random order
p a
p merge_sort(a) #=> sort shuffled array
