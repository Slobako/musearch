# SWGArtistApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artistGetGet**](SWGArtistApi.md#artistgetget) | **GET** /artist.get | 
[**artistRelatedGetGet**](SWGArtistApi.md#artistrelatedgetget) | **GET** /artist.related.get | 
[**artistSearchGet**](SWGArtistApi.md#artistsearchget) | **GET** /artist.search | 
[**chartArtistsGetGet**](SWGArtistApi.md#chartartistsgetget) | **GET** /chart.artists.get | 


# **artistGetGet**
```objc
-(NSNumber*) artistGetGetWithArtistId: (NSString*) artistId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* artistId = @"artistId_example"; //  The musiXmatch artist id
NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)

SWGArtistApi*apiInstance = [[SWGArtistApi alloc] init];

// 
[apiInstance artistGetGetWithArtistId:artistId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGArtistApi->artistGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistId** | **NSString***|  The musiXmatch artist id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artistRelatedGetGet**
```objc
-(NSNumber*) artistRelatedGetGetWithArtistId: (NSString*) artistId
    format: (NSString*) format
    callback: (NSString*) callback
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
```





### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* artistId = @"artistId_example"; // The musiXmatch artist id
NSString* format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* callback = @"callback_example"; // jsonp callback (optional)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)

SWGArtistApi*apiInstance = [[SWGArtistApi alloc] init];

// 
[apiInstance artistRelatedGetGetWithArtistId:artistId
              format:format
              callback:callback
              pageSize:pageSize
              page:page
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGArtistApi->artistRelatedGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistId** | **NSString***| The musiXmatch artist id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artistSearchGet**
```objc
-(NSNumber*) artistSearchGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    qArtist: (NSString*) qArtist
    fArtistId: (NSNumber*) fArtistId
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
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
NSNumber* fArtistId = @3.4; // When set, filter by this artist id (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)

SWGArtistApi*apiInstance = [[SWGArtistApi alloc] init];

// 
[apiInstance artistSearchGetWithFormat:format
              callback:callback
              qArtist:qArtist
              fArtistId:fArtistId
              page:page
              pageSize:pageSize
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGArtistApi->artistSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **qArtist** | **NSString***| The song artist | [optional] 
 **fArtistId** | **NSNumber***| When set, filter by this artist id | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chartArtistsGetGet**
```objc
-(NSNumber*) chartArtistsGetGetWithFormat: (NSString*) format
    callback: (NSString*) callback
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    country: (NSString*) country
        completionHandler: (void (^)(SWGInlineResponse2005* output, NSError* error)) handler;
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

SWGArtistApi*apiInstance = [[SWGArtistApi alloc] init];

// 
[apiInstance chartArtistsGetGetWithFormat:format
              callback:callback
              page:page
              pageSize:pageSize
              country:country
          completionHandler: ^(SWGInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGArtistApi->chartArtistsGetGet: %@", error);
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

### Return type

[**SWGInlineResponse2005***](SWGInlineResponse2005.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

