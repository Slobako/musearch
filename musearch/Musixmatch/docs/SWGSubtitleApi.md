# SWGSubtitleApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matcherSubtitleGetGet**](SWGSubtitleApi.md#matchersubtitlegetget) | **GET** /matcher.subtitle.get | 
[**trackSubtitleGetGet**](SWGSubtitleApi.md#tracksubtitlegetget) | **GET** /track.subtitle.get | 


# **matcherSubtitleGetGet**
```objc
-(NSNumber*) matcherSubtitleGetGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    qTrack: (NSString*) qTrack
    qArtist: (NSString*) qArtist
    fSubtitleLength: (NSNumber*) fSubtitleLength
    fSubtitleLengthMaxDeviation: (NSNumber*) fSubtitleLengthMaxDeviation
        completionHandler: (void (^)(SWGInlineResponse2008* output, NSError* error)) handler;
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
NSString* qArtist = @"qArtist_example"; //  The song artist (optional)
NSNumber* fSubtitleLength = @3.4; // Filter by subtitle length in seconds (optional)
NSNumber* fSubtitleLengthMaxDeviation = @3.4; // Max deviation for a subtitle length in seconds (optional)

SWGSubtitleApi*apiInstance = [[SWGSubtitleApi alloc] init];

// 
[apiInstance matcherSubtitleGetGetWithFormat:format
              callback:callback
              qTrack:qTrack
              qArtist:qArtist
              fSubtitleLength:fSubtitleLength
              fSubtitleLengthMaxDeviation:fSubtitleLengthMaxDeviation
          completionHandler: ^(SWGInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubtitleApi->matcherSubtitleGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **qTrack** | **NSString***| The song title | [optional] 
 **qArtist** | **NSString***|  The song artist | [optional] 
 **fSubtitleLength** | **NSNumber***| Filter by subtitle length in seconds | [optional] 
 **fSubtitleLengthMaxDeviation** | **NSNumber***| Max deviation for a subtitle length in seconds | [optional] 

### Return type

[**SWGInlineResponse2008***](SWGInlineResponse2008.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackSubtitleGetGet**
```objc
-(NSNumber*) trackSubtitleGetGetWithTrackId: (NSString*) trackId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse2008* output, NSError* error)) handler;
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

SWGSubtitleApi*apiInstance = [[SWGSubtitleApi alloc] init];

// 
[apiInstance trackSubtitleGetGetWithTrackId:trackId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubtitleApi->trackSubtitleGetGet: %@", error);
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

[**SWGInlineResponse2008***](SWGInlineResponse2008.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

