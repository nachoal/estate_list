# frozen_string_literal: true

class FetchInfoScriptJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Creating Properties...'
    doc = File.open('trovit_MX.xml') { |f| Nokogiri::XML(f) }

    Property.all.each do |p|
      p.update(published: false) unless doc.xpath("//id = '#{p.eb_id}'")
    end

    doc.xpath('//ad').each do |ad|
      property = if Property.find_by('eb_id = ?', ad.at('id').content).nil?
                   Property.new
                 else
                   Property.find_by('eb_id = ?', ad.at('id').content)
                 end
      property.address = ad.at('address').nil? ? nil : ad.at('address').content
      property.agency = ad.at('agency').nil? ? nil : ad.at('agency').content
      property.bathrooms = ad.at('bathrooms').nil? ? nil : ad.at('bathrooms').content
      property.city = ad.at('city').nil? ? nil : ad.at('city').content
      property.city_area = ad.at('city_area').nil? ? nil : ad.at('city_area').content
      property.content = ad.at('content').nil? ? nil : ad.at('content').content
      property.eb_date = ad.at('date').nil? ? nil : ad.at('date').content
      property.eb_id = ad.at('id').nil? ? nil : ad.at('id').content
      property.eb_time = ad.at('time').nil? ? nil : ad.at('time').content
      property.eb_year = ad.at('year').nil? ? nil : ad.at('year').content
      property.floor_number = ad.at('floor_number').nil? ? nil : ad.at('floor_number').content
      property.is_new = ad.at('is_new').nil? ? nil : ad.at('is_new').content
      property.latitude = ad.at('latitude').nil? ? nil : ad.at('latitude').content
      property.longitude = ad.at('longitude').nil? ? nil : ad.at('longitude').content
      property.parking = ad.at('parking').nil? ? nil : ad.at('parking').content
      property.postcode = ad.at('postcode').nil? ? nil : ad.at('postcode').content
      property.property_type = ad.at('property_type').nil? ? nil : ad.at('property_type').content
      property.region = ad.at('region').nil? ? nil : ad.at('region').content
      property.rooms = ad.at('rooms').nil? ? nil : ad.at('rooms').content
      property.title = ad.at('title').nil? ? nil : ad.at('title').content
      property.eb_type = ad.at('type').nil? ? nil : ad.at('type').content
      property.url = ad.at('url').nil? ? nil : ad.at('url').content
      property.published = true
      property.save
    end
  end
end