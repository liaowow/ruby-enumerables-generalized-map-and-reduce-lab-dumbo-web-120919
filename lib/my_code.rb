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

def reduce(arr, val = true)
  i = 0
  while i < arr.length do
    if !yield(arr[i], val)
      return false
    else
    val += yield(arr[i], val = 0)
    end
    i += 1
  end
 val
end

