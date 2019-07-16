# frozen_string_literal: true

require_relative 'parse'

class UniqueViews
  attr_reader :unique_file_path_array

  def initialize
    @unique_file_path_array = []
  end

  def identify_unique_visitors
    @data_collection.select { |v| @data_collection.count(v) > 1 }.uniq
  end

  def iterate_unique_visitors
    identify_unique_visitors.each do |unique_visitor|
      @unique_file_path_array << unique_visitor[0]
    end
    @unique_file_path_array
  end

  def total_unique_visitors_per_file
    @unique_file_path_array.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  def total_unique_visitors_ordered
    total_unique_visitors_per_file.sort { |a, b| b[1] <=> a[1] }.each do |uniq|
      puts "#{uniq[0]} #{uniq[1]} unique visitors"
    end
  end
end
