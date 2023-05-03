#!/usr/bin/env ruby
input_string = ARGV[0]
regex_pattern = /\[from:(?<from>.*?)\] \[to:(?<to>.*?)\] \[flags:(?<flags>.*?)\]/
matches = input_string.scan(regex_pattern)
output_string = matches.map { |match| "#{match['from']},#{match['to']},#{match['flags']}" }.join(",")
puts output_string
