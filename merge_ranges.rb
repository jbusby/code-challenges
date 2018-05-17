def merge_ranges(arr)
  arr = arr.sort
  merged_meetings = [arr[0]]
  arr[1..-1].each do |current_meeting_start, current_meeting_end|
    last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]

    if current_meeting_start <= last_merged_meeting_end
      merged_meetings[-1] = [
        last_merged_meeting_start,
        [last_merged_meeting_end, current_meeting_end].max
      ]
    else
      merged_meetings.push(
        [
          current_meeting_start,
          [last_merged_meeting_end, current_meeting_end].max
        ]
      )  
    end  
  end
  return merged_meetings
end

puts merge_ranges  [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
