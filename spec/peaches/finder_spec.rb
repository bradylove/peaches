require 'spec_helper'

describe "Peaches::Finder" do
  let(:root) { "/Users/bradylove/Development/Gems/peaches" }
  let(:finder) { Peaches::Finder.new(root) }

  it "should find a toplevel file with a fuzzy name" do
    finder.find("gem").should == ["Gemfile", "Gemfile.lock"]
  end

  it "should find a top level directory with a fuzzy name" do
    finder.find("lb").should == ["lib/peaches/finder.rb", "lib/peaches/version.rb", "lib/peaches.rb", "spec/spec_helper.rb"]
  end

  it "should find a 2nd level file or directory with fuzzy name" do
    finder.find("pches").should == ["bin/peaches", "lib/peaches/finder.rb", "lib/peaches/version.rb", "lib/peaches.rb", "spec/peaches/finder_spec.rb", "spec/peaches_spec.rb"]
  end

  it "should find a file without having the first letter of the file" do
    finder.find("spec").should == ["spec/peaches/finder_spec.rb", "spec/peaches_spec.rb", "spec/spec_helper.rb"]
  end
end
