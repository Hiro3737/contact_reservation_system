module AttendancesHelper
   def attendance_count
   Attendance.where(user_id: params[:id], day: Time.new(@first_day.year,@first_day.month).all_month).select("leaving_time"). count
     end
    end
    
