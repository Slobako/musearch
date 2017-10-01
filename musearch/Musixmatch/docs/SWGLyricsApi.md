# SWGLyricsApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matcherLyricsGetGet**](SWGLyricsApi.md#matcherlyricsgetget) | **GET** /matcher.lyrics.get | 
[**trackLyricsGetGet**](SWGLyricsApi.md#tracklyricsgetget) | **GET** /track.lyrics.get | 


# **matcherLyricsGetGet**
```objc
-(NSNumber*) matcherLyricsGetGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    qTrack: (NSString*) qTrack
    qArtist: (NSString*) qArtist
        completionHandler: (void (^)(SWGInlineResponse2007* output, NSError* error)) handler;
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

SWGLyricsApi*apiInstance = [[SWGLyricsApi alloc] init];

// 
[apiInstance matcherLyricsGetGetWithFormat:format
              callback:callback
              qTrack:qTrack
              qArtist:qArtist
          completionHandler: ^(SWGInlineResponse2007* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLyricsApi->matcherLyricsGetGet: %@", error);
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

### Return type

[**SWGInlineResponse2007***](SWGInlineResponse2007.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackLyricsGetGet**
```objc
-(NSNumber*) trackLyricsGetGetWithTrackId: (NSString*) trackId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse2007* output, NSError* error)) handler;
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

SWGLyricsApi*apiInstance = [[SWGLyricsApi alloc] init];

// 
[apiInstance trackLyricsGetGetWithTrackId:trackId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse2007* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLyricsApi->trackLyricsGetGet: %@", error);
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

[**SWGInlineResponse2007***](SWGInlineResponse2007.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

