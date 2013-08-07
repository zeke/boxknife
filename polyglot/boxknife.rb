require "json"

basedir = ARGV[0] || Dir.pwd
versions = Hash.new(0)

Dir.glob("#{basedir}/**/package.json").each do |file|
  begin
    pkg = JSON.parse(File.read(file))
  rescue
    JSON::ParserError
  end
  if pkg && pkg["engines"].is_a?(Hash) && pkg["engines"]["node"]
    versions[pkg["engines"]["node"]] += 1
  end
end

versions.each_pair do |version, count|
  puts "#{version} #{count}"
end
# puts versions