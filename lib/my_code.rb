# Your Code Here
def map(arr)
  new_arr = []
  i = 0
  while i < arr.length do
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end

def reduce(arr, num)
  val = num
  i = 0
  while i < arr.length do
    val += yield(arr[i], num)

    i += 1
  end
  val
end

