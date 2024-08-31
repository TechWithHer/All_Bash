#!/bin/bash



#functions to get memory status using vm_status

get_memory_status()

{

#lets get memory stats

vm_stats=$(vm_stat)

#get the page size (Default is 4096 bytes)

page_sizes=$(vm_stat |grep "page size of" | awk '{print $8}')


# Get the free, active, inactive, speculative, and wired pages
    
pages_free=$(echo "$vm_stat" | grep "Pages free" | awk '{print $3}' | sed 's/\.//')

pages_active=$(echo "$vm_stat" | grep "Pages active" | awk '{print $3}' | sed 's/\.//')

pages_inactive=$(echo "$vm_stat" | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')

pages_speculative=$(echo "$vm_stat" | grep "Pages speculative" | awk '{print $3}' | sed 's/\.//')

pages_wired=$(echo "$vm_stat" | grep "Pages wired down" | awk '{print $4}' | sed 's/\.//')

# Calculate the total used memory

    pages_used=$((pages_active + pages_inactive + pages_speculative + pages_wired))

 # Calculate total free memory
    free_memory=$((pages_free * page_size))
    used_memory=$((pages_used * page_size))
    total_memory=$((free_memory + used_memory))

# Convert to megabytes
    free_memory_mb=$((free_memory / 1024 / 1024))
    used_memory_mb=$((used_memory / 1024 / 1024))
    total_memory_mb=$((total_memory / 1024 / 1024))

  # Display the memory status
    echo "Memory Status:"
    echo "Free Memory: ${free_memory_mb} MB"
    echo "Used Memory: ${used_memory_mb} MB"
    echo "Total Memory: ${total_memory_mb} MB"
}
#Run the function

get_memory_status

