WeatherService weatherService = new WeatherService();

// Prescott Postal Code
String weatherInPrescott = weatherService.getCurrentWeatherByPostalCode( '86301');
System.debug( 'Weather in Prescott, AZ [' + weatherInPrescott + ']');

String weatherInGlendale = weatherService.getCurrentWeatherByPostalCode( '85310');
System.debug( 'value [' + weatherInGlendale+']' );

String weatherInRoseville = weatherService.getCurrentWeatherByPostalCode( '48066');
System.debug( 'value [' + weatherInRoseville+']' );

