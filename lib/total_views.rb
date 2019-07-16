# frozen_string_literal: true

require_relative 'parse'

# :nodoc:
class TotalViews
  def total_views_per_file_path
    @file_path_array.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  def total_views_ordered
    total_views_per_file_path.sort { |a, b| b[1] <=> a[1] }.each do |one_hit|
      puts "#{one_hit[0]} #{one_hit[1]} views"
    end
  end
end
