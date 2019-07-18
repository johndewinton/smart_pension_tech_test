# frozen_string_literal: true
require 'pry'
require 'unique_views'

class Parse
  attr_reader :data, :file_path_array, :unique_file_path_array

  def initialize(filename:)
    @data = File.read(filename)
    @file_path_array = []
    @unique_file_path_array = []
  end

  def parsed_file
    data.split("\n").map do |line|
      line.split(' ')
    end
  end

  # def sorted_pages
  #   sorted_array.map { |x| x.join(' ') }.join(' visits ')
  # end

  # def sorted_array
  #   total_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  # end

  # def total_views_per_file_path
  #   iterate_over_file_paths.group_by { |x| x }.map { |k, v| [k, v.count] }
  # end

  # def iterate_over_file_paths
  #   parsed_file.each do |hit|
  #     file_path_array << hit[0]
  #   end
  #   file_path_array
  # end

  # def identify_unique_views_parsed_file
  #   parsed_file.select { |v| parsed_file.count(v) > 1 }.uniq
  # end

  # def iterate_unique_views
  #   identify_unique_views_parsed_file.each do |u|
  #     unique_file_path_array << u[0]
  #   end
  #   unique_file_path_array
  # end

  # def total_unique_views_per_file_path
  #   iterate_unique_views.group_by { |x| x }.map { |k, v| [k, v.count] }
  # end

  # def sorted_array_unique_views
  #   total_unique_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  # end

  # def sorted_pages_unique_views
  #   sorted_array_unique_views.map { |x| x.join(' ') }.join(' unique visits ')
  # end
end
