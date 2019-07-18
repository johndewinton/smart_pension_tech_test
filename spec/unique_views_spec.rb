# frozen_string_literal: true

require './lib/parse'
require './lib/total_views'
require './lib/unique_views'

describe 'UniqueViews' do
  context 'when sorting logfile based on order of unique views' do
    it 'identifies the unique views and deletes the duplicates in the parsed array' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.identify_unique_views_parsed_file).to include(["/about", "897.280.786.156"],["/home", "897.280.786.156"],["/home", "715.156.286.412"],)
    end
    it 'returns' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.total_unique_views_per_file_path).to eq([["/help_page/1", 20], ["/contact", 21], ["/about/2", 18], ["/index", 19], ["/about", 18], ["/home", 21]])
    end
    it 'returns the sorted array based on number of unique views' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.sorted_array_unique_views).to eq([["/contact", 21], ["/home", 21], ["/help_page/1", 20], ["/index", 19], ["/about/2", 18], ["/about", 18]])
    end
    it 'returns the sorted result based on unique views' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.sorted_pages_unique_views).to eq("/contact 21 unique visits /home 21 unique visits /help_page/1 20 unique visits /index 19 unique visits /about/2 18 unique visits /about 18")
    end
  end
end
