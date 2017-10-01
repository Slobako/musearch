# SWGSnippetApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackSnippetGetGet**](SWGSnippetApi.md#tracksnippetgetget) | **GET** /track.snippet.get | 


# **trackSnippetGetGet**
```objc
-(NSNumber*) trackSnippetGetGetWithTrackId: (NSString*) trackId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse20010* output, NSError* error)) handler;
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

SWGSnippetApi*apiInstance = [[SWGSnippetApi alloc] init];

// 
[apiInstance trackSnippetGetGetWithTrackId:trackId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse20010* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSnippetApi->trackSnippetGetGet: %@", error);
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

[**SWGInlineResponse20010***](SWGInlineResponse20010.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

