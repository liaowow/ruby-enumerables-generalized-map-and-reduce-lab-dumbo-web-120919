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
    if num
      val += yield(arr[i], num = 0)
      
    elsif yield(arr[i])
      return true
      
    else
      return false
    end
    i += 1
  end
  val
end

