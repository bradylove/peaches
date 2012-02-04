module Peaches
  class Finder
    def find(string, root)
      string = string.split(//).join(".*?")
      pattern = "/#{string}/i"
      puts /#{string}/i

      #Dir.chdir(root)
      #results = Dir.glob(pattern, File::FNM_CASEFOLD)

      all_files = []

      Find.find(root) do |path|
        if FileTest.directory?(path)
          if File.basename(path)[0] == ?.
            Find.prune
          else
            next
          end
        else
          path.slice!("#{root}/")
          all_files << path
        end
      end

      results = all_files.grep /#{string}/i

      puts results
      return results
    end
  end
end
