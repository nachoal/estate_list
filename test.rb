require('Nokogiri')
doc = File.open("trovit_MX.xml") { |f| Nokogiri::XML(f)}

doc.xpath('//ad').each do |ad|
  ad.elements.each do |e|
    p "#{e.name}: #{e.content}"
  end
end