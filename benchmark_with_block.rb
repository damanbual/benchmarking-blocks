def benchmark
  # Record the start time before executing the block
  start_time = Time.now
  
  # Run the block of code, which is the behavior passed to `benchmark`
  yield
  
  # Record the end time after the block is finished
  end_time = Time.now

  # Calculate and return the running time in seconds
  end_time - start_time
end
 
# The long string we're going to reverse to test our benchmark
long_string = "apple" * 100000000
 
# Benchmark the time it takes to reverse the long string
running_time = benchmark { long_string.reverse }
 
# Output the running time
puts "string.reverse took #{running_time} seconds to run"