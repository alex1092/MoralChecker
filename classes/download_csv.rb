# require "csv"
# require_relative "./employee.rb"

# class DownloadCsv < Employee
#   def download_csv
#     # To a file
#     CSV.open("./file.csv", "wb") do |csv|
#       csv << @name
#       csv << @userscore
#       csv << @message
#       csv << ["Total: #{score_total}"]
#     end
#   end
# end

# download_csv = DownloadCsv.new
