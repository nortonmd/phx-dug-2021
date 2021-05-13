/*
Cache.OrgPartition orgPartition = Cache.Org.getPartition( 'local.WeatherCache' );
orgPartition.put( '86301', '80' );
 */
Cache.Org.put( 'local.WeatherCache.Prescott', '80');
Cache.Org.put( 'local.WeatherCache.Glendale', '100');

String prescottWeather = ( String ) Cache.Org.get( 'local.WeatherCache.Prescott');
System.debug( 'Prescott Weather [' + prescottWeather + ']');

String glendaleWeather = ( String ) Cache.Org.get( 'local.WeatherCache.Glendale');
System.debug( 'Glendale Weather [' + glendaleWeather + ']');
