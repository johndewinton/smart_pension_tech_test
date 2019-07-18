# frozen_string_literal: true
require 'pry'

class Parse
  attr_reader :data, :file_path_array, :unique_file_path_array

  def initialize(filename:)
    @data = File.read(filename)
    @file_path_array = []
    @unique_file_path_array = []
  end

  # parsing the webserver.log into an array of arrays

  def parsed_file
    data.split("\n").map do |line|
      line.split(' ')
    end
  end

  # iterating over each individual array element in the larger array
  # in order to extract the file path from each element

  def iterate_over_file_paths
    parsed_file.each do |hit|
      file_path_array << hit[0]
    end
    file_path_array
  end

  # works out the number of times a file path appears in the log file.

  def total_views_per_file_path
    iterate_over_file_paths.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  # sorts the array of total views into an ordered array based on number of views

  def sorted_array
    total_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  end

  # converts the sorted array into a string

  def sorted_pages
    sorted_array.map { |x| x.join(' ') }.join(' visits ')
  end

  # identifies all unique views by selecting duplicate elements and then removing the duplicates.

  def identify_unique_views_parsed_file
    parsed_file.select { |v| parsed_file.count(v) > 1 }.uniq
  end

  # iterates over each unique view and extracts the log file path for each one in a new array.

  def iterate_unique_views
    identify_unique_views_parsed_file.each do |u|
      unique_file_path_array << u[0]
    end
    unique_file_path_array
  end

  # works out the number of times a file path appears in the iterated array.

  def total_unique_views_per_file_path
    iterate_unique_views.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  # sorts the array of unique views into an ordered array based on number of views

  def sorted_array_unique_views
    total_unique_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  end

  # converts the sorted array into a string

  def sorted_pages_unique_views
    sorted_array_unique_views.map { |x| x.join(' ') }.join(' unique visits ')
  end
end
