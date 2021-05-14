// Platform Cache with Collections

// Can Cache store collections?  Why, yes it can.

Map<String, List<String>> stateZipMap = new Map<String, List<String>>();

// Arizona
List<String> azPostalCodes = new List<String>();
azPostalCodes.add( '85310' );
azPostalCodes.add( '86301' );
stateZipMap.put( 'AZ', azPostalCodes );

// Michigan
List<String> miPostalCodes = new List<String>();
miPostalCodes.add( '48000' );
miPostalCodes.add( '48066' );
miPostalCodes.add( '49307' );
stateZipMap.put( 'MI', miPostalCodes );

Cache.Org.put( 'local.GeographicCache.stateZipMap', stateZipMap );
Map<String, List<String>> newMap = ( Map<String, List<String>> ) Cache.Org.get( 'local.GeographicCache.stateZipMap' );

System.debug( 'First MI Postal Code is ' + newMap.get( 'MI' )[0] );

