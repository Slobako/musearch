# SWGAlbumApi

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**albumGetGet**](SWGAlbumApi.md#albumgetget) | **GET** /album.get | 
[**artistAlbumsGetGet**](SWGAlbumApi.md#artistalbumsgetget) | **GET** /artist.albums.get | 


# **albumGetGet**
```objc
-(NSNumber*) albumGetGetWithAlbumId: (NSString*) albumId
    format: (NSString*) format
    callback: (NSString*) callback
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
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

SWGAlbumApi*apiInstance = [[SWGAlbumApi alloc] init];

// 
[apiInstance albumGetGetWithAlbumId:albumId
              format:format
              callback:callback
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAlbumApi->albumGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **albumId** | **NSString***| The musiXmatch album id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artistAlbumsGetGet**
```objc
-(NSNumber*) artistAlbumsGetGetWithArtistId: (NSString*) artistId
    format: (NSString*) format
    callback: (NSString*) callback
    sReleaseDate: (NSString*) sReleaseDate
    gAlbumName: (NSString*) gAlbumName
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error)) handler;
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
NSString* sReleaseDate = @"sReleaseDate_example"; // Sort by release date (asc|desc) (optional)
NSString* gAlbumName = @"gAlbumName_example"; // Group by Album Name (optional)
NSNumber* pageSize = @3.4; // Define the page size for paginated results.Range is 1 to 100. (optional)
NSNumber* page = @3.4; // Define the page number for paginated results (optional)

SWGAlbumApi*apiInstance = [[SWGAlbumApi alloc] init];

// 
[apiInstance artistAlbumsGetGetWithArtistId:artistId
              format:format
              callback:callback
              sReleaseDate:sReleaseDate
              gAlbumName:gAlbumName
              pageSize:pageSize
              page:page
          completionHandler: ^(SWGInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAlbumApi->artistAlbumsGetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistId** | **NSString***| The musiXmatch artist id | 
 **format** | **NSString***| output format: json, jsonp, xml. | [optional] [default to json]
 **callback** | **NSString***| jsonp callback | [optional] 
 **sReleaseDate** | **NSString***| Sort by release date (asc|desc) | [optional] 
 **gAlbumName** | **NSString***| Group by Album Name | [optional] 
 **pageSize** | **NSNumber***| Define the page size for paginated results.Range is 1 to 100. | [optional] 
 **page** | **NSNumber***| Define the page number for paginated results | [optional] 

### Return type

[**SWGInlineResponse2002***](SWGInlineResponse2002.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

