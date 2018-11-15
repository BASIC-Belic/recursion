
def recursive_linear_search(find_me, index, list)
  # Your Code here
  if index >= list.length
    #-1 can't be an index in C
    return -1
  elsif list[index] == find_me #You find what you're looking for extend Forwadable
    return index
  else
    recursive_linear_search(find_me, index + 1, list)
  end
end

def linear_search(find_me, list)
  return recursive_linear_search(find_me, 0, list)
end

def recursive_binary_search(find_me, start, last, list)
  mid = list.length / 2

  if mid == list.length - 1 || mid == 0
    return -1
  elsif list[mid] == find_me
    return mid
  elsif list[start] == find_me
    return start
  elsif list[last] == find_me
    return last
  else
    if list[mid] < find_me
      recursive_binary_search(find_me, 0, mid - 1, list[start...last])
    else
      recursive_binary_search(find_me, mid + 1, list.length - 1, list[start...last])
    end
  end
end

def recursive_binary_search(find_me, start, last, list)
  mid = list.length / 2

  if mid == list.length - 1 || mid == 0
    return -1
  elsif list[mid] == find_me
    return mid
  elsif list[start] == find_me
    return start
  elsif list[last] == find_me
    return last
  else
    if list[mid] < find_me
      recursive_binary_search(find_me, 0, mid - 1, list[start...last])
    else
      recursive_binary_search(find_me, mid + 1, list.length - 1, list[start...last])
    end
  end

  #chris solution
  # return - 1 if start < last
  # mid = (start + last) / 2
  # if list[mid] == find_me
  #   return mid
  # elsif list[mid] > find_me
  #   last = mid + 1
  # else
  #   start = mid + 1
  # end
  #
  # return recursive_binary_search(find_me, start, last, list)
end

def binary_search(find_me, list)
  return recursive_binary_search(find_me, 0, list.length-1, list)
end

# 
# #worst recursion
# #2^n
# def fib(n)
#   if n == 0 || n == 1
#     return 1
#   else
#     fib(n-1) + fib(n-2)
#   end
# end
