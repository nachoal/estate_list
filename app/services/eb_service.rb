class EbService
  document = "trovit_MX.xml"
  def initialize

  end

  def read(file)
    doc = File.open(file) { |f| Nokogiri::XML(f)}
  end

end



doc = File.open("trovit_MX.xml") { |f| Nokogiri::XML(f)}

doc.xpath('//ad').first.elements.each do |e|
  p "#{e.name}: #{e.content}"
end