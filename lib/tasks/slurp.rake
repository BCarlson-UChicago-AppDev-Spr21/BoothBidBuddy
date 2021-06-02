namespace :slurp do
  desc "TODO"
  task sections: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Processed_Bidding_Data_Test2.csv"))
    csv =  CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      sec = Section.new
      sec.day = row["Day"]
      sec.phase_1_enrollment = row["Total Enrollment after Phase 1"]
      sec.phase_1_price = row["Phase 1 Price"]
      sec.phase_1_seats_available = row["Seats Available after Phase 1"]
      sec.phase_2_enrollment = row["Total Enrollment after Phase 2"]
      sec.phase_2_price = row["Phase 2 Price"]
      sec.phase_2_seats_available = row["Seats Available after Phase 2"]
      sec.phase_3_enrollment = row["Total Enrollment after Phase 3"]
      sec.phase_3_price = row["Phase 3 Price"]
      sec.phase_3_seats_available = row["Seats Available after Phase 3"]
      sec.phase_4_enrollment = row["Total Enrollment after Phase 4"]
      sec.phase_4_price = row["Phase 4 Price"]
      sec.phase_4_seats_available = row["Seats Available after Phase 4"]
      sec.phase_new1_enrollment = row["Total Enrollment after New Students Phase 1"]
      sec.phase_new1_price = row["New Students Phase 1 Price"]
      sec.phase_new1_seats_available = row["Seats Available after New Students Phase 1"]
      sec.phase_new2_enrollment = row["Total Enrollment after New Students Phase 2"]
      sec.phase_new2_price = row["New Students Phase 2 Price"]
      sec.phase_new_2_seats_available = row["Seats Available after New Students Phase 2"]
      sec.program = row["Program"]
      sec.quarter = row["Quarter"]
      sec.section_number = row["Section"]
      sec.time = row["Time"]
      sec.title = row["Title"]
      sec.total_seats_offered = row["Total Seats Available"]
      sec.year = row["Year"]
      sec.course_id = row["Course"]
      sec.instructor_id = row["Instructor_id"]
      sec.save

      puts "#{sec.title} created"

    end
  end

  task professors: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Professor_Table_Test_2.csv"))
    csv =  CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      prof = Professor.new
      prof.id = row["id"]
      prof.name = row["name"]
      prof.save

      puts("#{prof.name} created")

    end
  end

  task courses: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Courses_Table_Test_2.csv"))
    csv =  CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      course = Course.new
      course.id = row["id"]
      course.title = row["title"]
      course.save

      puts("#{course.title} created")

    end
  end
end

