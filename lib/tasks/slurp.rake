namespace :slurp do
  desc "TODO"
  task sections: :environment do
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "Processed_Bidding_Data_Test2.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

    csv.each do |row|
      puts row.to_hash
    end

  end

end
