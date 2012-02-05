module Peaches
  class Finder
    attr_accessor :cache

    def initialize(root)
      @root = root
    end


    # FuzzyFind files from the cache
    #
    # == Paarameters
    # string::
    #   The string you want to use to find matching files, if left black it
    #   will bring up all the files
    def find(string)
      string = string.split(//).join(".*?")
      pattern = "/#{string}/i"

      results = self.cache.grep /#{string}/i

      return results
    end

    # forces a refresh of the file list cache
    def refresh_cache
      @cache = build_cache
    end

    # Get and/or fetch the file list cache
    def cache
      @cache ||= build_cache
    end

    # Builds the cache excluding files that start with .
    def build_cache
      all_files = []

      Find.find(@root) do |path|
        if FileTest.directory?(path)
          if File.basename(path)[0] == ?.
            Find.prune
          else
            next
          end
        else
          path.slice!("#{@root}/")
          all_files << path
        end
      end

      return all_files
    end
  end
end
