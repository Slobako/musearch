# SWGTrackApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**albumTracksGetGet**](SWGTrackApi.md#albumtracksgetget) | **GET** /album.tracks.get | 
[**chartTracksGetGet**](SWGTrackApi.md#charttracksgetget) | **GET** /chart.tracks.get | 
[**matcherTrackGetGet**](SWGTrackApi.md#matchertrackgetget) | **GET** /matcher.track.get | 
[**trackGetGet**](SWGTrackApi.md#trackgetget) | **GET** /track.get | 
[**trackSearchGet**](SWGTrackApi.md#tracksearchget) | **GET** /track.search | 


# **albumTracksGetGet**
```objc
-(NSNumber*) albumTracksGetGetWithAlbumId: (NSString*) albumId
    format: (NSString*) format
    callback: (NSString*) callback
    fHasLyrics: (NSString*) fHasLyrics
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* albumId = @"albumId_example"; // The musiXmatch album id
NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)
NSString* fHasLyrics = @"fHasLyrics_example"; // When set, filter only contents with lyrics (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)

SWGTrackApi*apiInstance = [[SWGTrackApi alloc] init];

// 
[apiInstance albumTracksGetGetWithAlbumId:albumId
              format:format
              callback:callback
              fHasLyrics:fHasLyrics
              page:page
              pageSize:pageSize
          completionHandler: ^(SWGInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTrackApi->albumTracksGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **albumId** | **NSString***| The musiXmatch album id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **fHasLyrics** | **NSString***| When set, filter only contents with lyrics | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 

### Return type

[**SWGInlineResponse2001***](SWGInlineResponse2001.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chartTracksGetGet**
```objc
-(NSNumber*) chartTracksGetGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    country: (NSString*) country
    fHasLyrics: (NSString*) fHasLyrics
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)
NSString* country = @"us"; // A valid ISO 3166 country code (optional) (default to us)
NSString* fHasLyrics = @"fHasLyrics_example"; // When set, filter only contents with lyrics (optional)

SWGTrackApi*apiInstance = [[SWGTrackApi alloc] init];

// 
[apiInstance chartTracksGetGetWithFormat:format
              callback:callback
              page:page
              pageSize:pageSize
              country:country
              fHasLyrics:fHasLyrics
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTrackApi->chartTracksGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 
 **country** | **NSString***| A valid ISO 3166 country code | [optional] [default to us]
 **fHasLyrics** | **NSString***| When set, filter only contents with lyrics | [optional] 

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matcherTrackGetGet**
```objc
-(NSNumber*) matcherTrackGetGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    qArtist: (NSString*) qArtist
    qTrack: (NSString*) qTrack
    fHasLyrics: (NSNumber*) fHasLyrics
    fHasSubtitle: (NSNumber*) fHasSubtitle
        completionHandler: (void (^)(SWGInlineResponse2009* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)
NSString* qArtist = @"qArtist_example"; // The song artist (optional)
NSString* qTrack = @"qTrack_example"; // The song title (optional)
NSNumber* fHasLyrics = @3.4; // When set, filter only contents with lyrics (optional)
NSNumber* fHasSubtitle = @3.4; // When set, filter only contents with subtitles (optional)

SWGTrackApi*apiInstance = [[SWGTrackApi alloc] init];

// 
[apiInstance matcherTrackGetGetWithFormat:format
              callback:callback
              qArtist:qArtist
              qTrack:qTrack
              fHasLyrics:fHasLyrics
              fHasSubtitle:fHasSubtitle
          completionHandler: ^(SWGInlineResponse2009* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTrackApi->matcherTrackGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **qArtist** | **NSString***| The song artist | [optional] 
 **qTrack** | **NSString***| The song title | [optional] 
 **fHasLyrics** | **NSNumber***| When set, filter only contents with lyrics | [optional] 
 **fHasSubtitle** | **NSNumber***| When set, filter only contents with subtitles | [optional] 

### Return type

[**SWGInlineResponse2009***](SWGInlineResponse2009.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackGetGet**
```objc
-(NSNumber*) trackGetGetWithTrackId: (NSString*) trackId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse2009* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* trackId = @"trackId_example"; // The musiXmatch track id
NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)

SWGTrackApi*apiInstance = [[SWGTrackApi alloc] init];

// 
[apiInstance trackGetGetWithTrackId:trackId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse2009* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTrackApi->trackGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackId** | **NSString***| The musiXmatch track id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 

### Return type

[**SWGInlineResponse2009***](SWGInlineResponse2009.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackSearchGet**
```objc
-(NSNumber*) trackSearchGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    qTrack: (NSString*) qTrack
    qArtist: (NSString*) qArtist
    qLyrics: (NSString*) qLyrics
    fArtistId: (NSNumber*) fArtistId
    fMusicGenreId: (NSNumber*) fMusicGenreId
    fLyricsLanguage: (NSNumber*) fLyricsLanguage
    fHasLyrics: (NSNumber*) fHasLyrics
    sArtistRating: (NSString*) sArtistRating
    sTrackRating: (NSString*) sTrackRating
    quorumFactor: (NSNumber*) quorumFactor
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)
NSString* qTrack = @"qTrack_example"; // The song title (optional)
NSString* qArtist = @"qArtist_example"; // The song artist (optional)
NSString* qLyrics = @"qLyrics_example"; // Any word in the lyrics (optional)
NSNumber* fArtistId = @3.4; // When set, filter by this artist id (optional)
NSNumber* fMusicGenreId = @3.4; // When set, filter by this music category id (optional)
NSNumber* fLyricsLanguage = @3.4; // Filter by the lyrics language (en,it,..) (optional)
NSNumber* fHasLyrics = @3.4; // When set, filter only contents with lyrics (optional)
NSString* sArtistRating = @"sArtistRating_example"; // Sort by our popularity index for artists (asc|desc) (optional)
NSString* sTrackRating = @"sTrackRating_example"; // Sort by our popularity index for tracks (asc|desc) (optional)
NSNumber* quorumFactor = @1; // Search only a part of the given query string.Allowed range is (0.1 – 0.9) (optional) (default to 1)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)

SWGTrackApi*apiInstance = [[SWGTrackApi alloc] init];

// 
[apiInstance trackSearchGetWithFormat:format
              callback:callback
              qTrack:qTrack
              qArtist:qArtist
              qLyrics:qLyrics
              fArtistId:fArtistId
              fMusicGenreId:fMusicGenreId
              fLyricsLanguage:fLyricsLanguage
              fHasLyrics:fHasLyrics
              sArtistRating:sArtistRating
              sTrackRating:sTrackRating
              quorumFactor:quorumFactor
              pageSize:pageSize
              page:page
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTrackApi->trackSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **qTrack** | **NSString***| The song title | [optional] 
 **qArtist** | **NSString***| The song artist | [optional] 
 **qLyrics** | **NSString***| Any word in the lyrics | [optional] 
 **fArtistId** | **NSNumber***| When set, filter by this artist id | [optional] 
 **fMusicGenreId** | **NSNumber***| When set, filter by this music category id | [optional] 
 **fLyricsLanguage** | **NSNumber***| Filter by the lyrics language (en,it,..) | [optional] 
 **fHasLyrics** | **NSNumber***| When set, filter only contents with lyrics | [optional] 
 **sArtistRating** | **NSString***| Sort by our popularity index for artists (asc|desc) | [optional] 
 **sTrackRating** | **NSString***| Sort by our popularity index for tracks (asc|desc) | [optional] 
 **quorumFactor** | **NSNumber***| Search only a part of the given query string.Allowed range is (0.1 – 0.9) | [optional] [default to 1]
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

