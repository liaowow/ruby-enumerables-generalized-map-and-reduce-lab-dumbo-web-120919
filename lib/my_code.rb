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

def reduce(arr, num = 0)
  val = num
  i = 0
  while i < arr.length do
    if type(yield(arr[i], num)) == 'int'
      val += yield(arr[i], num)
      
    elsif yield(arr[i], num)
      return true
      
    else
      return false
    end
    i += 1
  end
  val
end

