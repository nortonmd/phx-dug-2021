public with sharing class WeatherService {
	public static final String WEATHER_CACHE = 'local.WeatherCache.';

	public String getCurrentWeatherByPostalCode( String postalCode ) {
		String currentWeather = ( String ) Cache.Org.get( WEATHER_CACHE + postalCode );
		if ( currentWeather == null ) {
			// Make API Call
			currentWeather = getCurrentWeatherAPI( postalCode );
			Cache.Org.put( WEATHER_CACHE + postalCode, currentWeather);
		}
		return currentWeather;
	}

	// Mock Service
	private String getCurrentWeatherAPI( String postalCode ) {
		// API Call Here
		Map<String,String> mockWeatherService = new Map<String,String>();
		mockWeatherService.put( '85310', '108');
		mockWeatherService.put( '86301', '80');
		if ( mockWeatherService.containsKey( postalCode)) {
			return mockWeatherService.get( postalCode);
		}
		return '100';
	}

}
