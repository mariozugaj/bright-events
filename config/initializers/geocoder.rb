Geocoder.configure(
  units: :km,
  google: {
    use_https: true,
    api_key: ENV['GMAPS_API_KEY']
  },
  ip_lookup: :ipapi_com,
  timeout: 15
)
