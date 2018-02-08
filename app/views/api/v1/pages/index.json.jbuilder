json.array! @pages do |pages|
  json.id pages.id
  json.url pages.url
  json.found_date_time pages.found_date_time
  json.last_scan_date pages.last_scan_date
end