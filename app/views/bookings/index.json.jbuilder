json.array!(@bookings) do |booking|
  json.extract! booking, :id, :email, :date, :user.id
  json.url booking_url(booking, format: :json)
end
