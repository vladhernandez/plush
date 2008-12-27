#!/usr/bin/env ruby
 
# Ruby script to automatically "git rm" deleted files
 
DELETED_REXP = /^#\s+deleted:\s+(.*)/
MARKER_LINE = '# Changed but not updated:'
 
lines = `git status`
 
found_marker = false
 
lines.split("\n").each do |line|
  found_marker = true if line == MARKER_LINE
  next unless found_marker
  if line =~ DELETED_REXP
    `git rm #{$1}`
  end
end