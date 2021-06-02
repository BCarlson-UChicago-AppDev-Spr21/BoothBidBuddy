namespace :slurp do
  desc "TODO"
  task sections: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Processed_Bidding_Data_Test2.csv"))
    csv =  CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      sec = Section.new
      sec.day = row["Day"]
      sec.phase_1_enrollment = ["Total Enrollment after Phase 1"]
      sec.phase_1_price = ["Phase 1 Price"]
      sec.phase_1_seats_available = ["Seats Available after Phase 1"]
      sec.phase_2_enrollment = ["Total Enrollment after Phase 2"]
      sec.phase_2_price = ["Phase 2 Price"]
      sec.phase_2_seats_available = ["Seats Available after Phase 2"]
      sec.phase_3_enrollment = ["Total Enrollment after Phase 3"]
      sec.phase_3_price = ["Phase 3 Price"]
      sec.phase_3_seats_available = ["Seats Available after Phase 3"]
      sec.phase_4_enrollment = ["Total Enrollment after Phase 4"]
      sec.phase_4_price = ["Phase 4 Price"]
      sec.phase_4_seats_available = ["Seats Available after Phase 4"]
      sec.phase_new1_enrollment = ["Total Enrollment after New Students Phase 1"]
      sec.phase_new1_price = ["New Students Phase 1 Price"]
      sec.phase_new1_seats_available = ["Seats Available after New Students Phase 1"]
      sec.phase_new2_enrollment = ["Total Enrollment after New Students Phase 2"]
      sec.phase_new2_price = ["New Students Phase 2 Price"]
      sec.phase_new_2_seats_available = ["Seats Available after New Students Phase 2"]
      sec.program = ["Program"]
      sec.quarter = ["Quarter"]
      sec.section_number = ["Section"]
      sec.time = ["Time"]
      sec.title = ["Title"]
      sec.total_seats_offered = ["Total Seats Available"]
      sec.year = ["Year"]
      sec.course_id = ["Course"]
      sec.instructor_id = ["Instructor_id"]

    end
  end

end

