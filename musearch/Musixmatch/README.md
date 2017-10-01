# SwaggerClient

Musixmatch lyrics API is a robust service that permits you to search and retrieve lyrics in the simplest possible way. It just works.  Include millions of licensed lyrics on your website or in your application legally.  The fastest, most powerful and legal way to display lyrics on your website or in your application.  #### Read musixmatch API Terms & Conditions and the Privacy Policy: Before getting started, you must take a look at the [API Terms & Conditions](http://musixmatch.com/apiterms/) and the [Privacy Policy](https://developer.musixmatch.com/privacy). We’ve worked hard to make this service completely legal so that we are all protected from any foreseeable liability. Take the time to read this stuff.  #### Register for an API key: All you need to do is [register](https://developer.musixmatch.com/signup) in order to get your API key, a mandatory parameter for most of our API calls. It’s your personal identifier and should be kept secret:  ```   https://api.musixmatch.com/ws/v1.1/track.get?apikey=YOUR_API_KEY ``` #### Integrate the musixmatch service with your web site or application In the most common scenario you only need to implement two API calls:  The first call is to match your catalog to ours using the [track.search](#!/Track/get_track_search) function and the second is to get the lyrics using the [track.lyrics.get](#!/Lyrics/get_track_lyrics_get) api. That’s it!  ## API Methods What does the musiXmatch API do?  The musiXmatch API allows you to read objects from our huge 100% licensed lyrics database.  To make your life easier we are providing you with one or more examples to show you how it could work in the wild. You’ll find both the API request and API response in all the available output formats for each API call. Follow the links below for the details.  The current API version is 1.1, the root URL is located at https://api.musixmatch.com/ws/1.1/  Supported input parameters can be found on the page [Input Parameters](https://developer.musixmatch.com/documentation/input-parameters). Use UTF-8 to encode arguments when calling API methods.  Every response includes a status_code. A list of all status codes can be consulted at [Status Codes](https://developer.musixmatch.com/documentation/status-codes).  ## Music meta data The musiXmatch api is built around lyrics, but there are many other data we provide through the api that can be used to improve every existent music service.  ## Track Inside the track object you can get the following extra information:  ### TRACK RATING  The track rating is a score 0-100 identifying how popular is a song in musixmatch.  You can use this information to sort search results, like the most popular songs of an artist, of a music genre, of a lyrics language.  ### INSTRUMENTAL AND EXPLICIT FLAGS  The instrumental flag identifies songs with music only, no lyrics.  The explicit flag identifies songs with explicit lyrics or explicit title. We're able to identify explicit words and set the flag for the most common languages.  ### FAVOURITES  How many users have this song in their list of favourites.  Can be used to sort tracks by num favourite to identify more popular tracks within a set.  ### MUSIC GENRE  The music genere of the song.  Can be used to group songs by genre, as input for similarity alghorithms, artist genre identification, navigate songs by genere, etc.  ### SONG TITLES TRANSLATIONS  The track title, as translated in different lanauages, can be used to display the right writing for a given user, example:  LIES (Bigbang) becomes 在光化門 in chinese HALLELUJAH (Bigbang) becomes ハレルヤ in japanese   ## Artist Inside the artist object you can get the following nice extra information:  ### COMMENTS AND COUNTRY  An artist comment is a short snippet of text which can be mainly used for disambiguation.  The artist country is the born country of the artist/group  There are two perfect search result if you search by artist with the keyword \"U2\". Indeed there are two distinct music groups with this same name, one is the most known irish group of Bono Vox, the other is a less popular (world wide speaking) group from Japan.  Here's how you can made use of the artist comment in your search result page:  U2 (Irish rock band) U2 (あきやまうに) You can also show the artist country for even better disambiguation:  U2 (Irish rock band) from Ireland U2 (あきやまうに) from Japan ARTIST TRANSLATIONS  When you create a world wide music related service you have to take into consideration to display the artist name in the user's local language. These translation are also used as aliases to improve the search results.  Let's use PSY for this example.  Western people know him as PSY but korean want to see the original name 싸이.  Using the name translations provided by our api you can show to every user the writing they expect to see.  Furthermore, when you search for \"psy gangnam style\" or \"싸이 gangnam style\" with our search/match api you will still be able to find the song.  ### ARTIST RATING  The artist rating is a score 0-100 identifying how popular is an artist in musixmatch.  You can use this information to build charts, for suggestions, to sort search results. In the example above about U2, we use the artist rating to show the irish band before the japanese one in our serp.  ### ARTIST MUSIC GENRE  We provide one or more main artist genre, this information can be used to calculate similar artist, suggestions, or the filter a search by artist genre.    ## Album Inside the album object you can get the following nice extra information:  ### ALBUM RATING  The album rating is a score 0-100 identifying how popular is an album in musixmatch.  You can use this information to sort search results, like the most popular albums of an artist.  ### ALBUM RATING  The album rating is a score 0-100 identifying how popular is an album in musixmatch.  You can use this information to sort search results, like the most popular albums of an artist.  ### ALBUM COPYRIGHT AND LABEL  For most of our albums we can provide extra information like for example:  Label: Universal-Island Records Ltd. Copyright: (P) 2013 Rubyworks, under license to Columbia Records, a Division of Sony Music Entertainment. ALBUM TYPE AND RELEASE DATE  The album official release date can be used to sort an artist's albums view starting by the most recent one.  Album can also be filtered or grouped by type: Single, Album, Compilation, Remix, Live. This can help to build an artist page with a more organized structure.  ### ALBUM MUSIC GENRE  For most of the albums we provide two groups of music genres. Primary and secondary. This information can be used to help user navigate albums by genre.  An example could be:  Primary genere: POP Secondary genre: K-POP or Mandopop 

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.1.0
- Package version: 
- Build date: 2016-09-26T11:07:37.966Z
- Build package: class io.swagger.codegen.languages.ObjcClientCodegen
For more information, please visit [https://musixmatch.com](https://musixmatch.com)

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com//.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/SWGApiClient.h>
#import <SwaggerClient/SWGConfiguration.h>
// load models
#import <SwaggerClient/SWGAlbum.h>
#import <SwaggerClient/SWGAlbumPrimaryGenres.h>
#import <SwaggerClient/SWGAlbumPrimaryGenresMusicGenre.h>
#import <SwaggerClient/SWGAlbumPrimaryGenresMusicGenreList.h>
#import <SwaggerClient/SWGArtist.h>
#import <SwaggerClient/SWGArtistArtistAliasList.h>
#import <SwaggerClient/SWGArtistArtistCredits.h>
#import <SwaggerClient/SWGArtistArtistNameTranslation.h>
#import <SwaggerClient/SWGArtistArtistNameTranslationList.h>
#import <SwaggerClient/SWGArtistPrimaryGenres.h>
#import <SwaggerClient/SWGArtistPrimaryGenresMusicGenre.h>
#import <SwaggerClient/SWGArtistPrimaryGenresMusicGenreList.h>
#import <SwaggerClient/SWGArtistSecondaryGenres.h>
#import <SwaggerClient/SWGInlineResponse200.h>
#import <SwaggerClient/SWGInlineResponse2001.h>
#import <SwaggerClient/SWGInlineResponse20010.h>
#import <SwaggerClient/SWGInlineResponse20010Message.h>
#import <SwaggerClient/SWGInlineResponse20010MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2001Message.h>
#import <SwaggerClient/SWGInlineResponse2001MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2001MessageHeader.h>
#import <SwaggerClient/SWGInlineResponse2002.h>
#import <SwaggerClient/SWGInlineResponse2002Message.h>
#import <SwaggerClient/SWGInlineResponse2002MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2002MessageHeader.h>
#import <SwaggerClient/SWGInlineResponse2003.h>
#import <SwaggerClient/SWGInlineResponse2003Message.h>
#import <SwaggerClient/SWGInlineResponse2003MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2004.h>
#import <SwaggerClient/SWGInlineResponse2004Message.h>
#import <SwaggerClient/SWGInlineResponse2004MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2005.h>
#import <SwaggerClient/SWGInlineResponse2005Message.h>
#import <SwaggerClient/SWGInlineResponse2005MessageHeader.h>
#import <SwaggerClient/SWGInlineResponse2006.h>
#import <SwaggerClient/SWGInlineResponse2006Message.h>
#import <SwaggerClient/SWGInlineResponse2006MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2006MessageBodyTrackList.h>
#import <SwaggerClient/SWGInlineResponse2007.h>
#import <SwaggerClient/SWGInlineResponse2007Message.h>
#import <SwaggerClient/SWGInlineResponse2007MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2008.h>
#import <SwaggerClient/SWGInlineResponse2008Message.h>
#import <SwaggerClient/SWGInlineResponse2008MessageBody.h>
#import <SwaggerClient/SWGInlineResponse2009.h>
#import <SwaggerClient/SWGInlineResponse2009Message.h>
#import <SwaggerClient/SWGInlineResponse200Message.h>
#import <SwaggerClient/SWGInlineResponse200MessageBody.h>
#import <SwaggerClient/SWGInlineResponse200MessageHeader.h>
#import <SwaggerClient/SWGLyrics.h>
#import <SwaggerClient/SWGSnippet.h>
#import <SwaggerClient/SWGSubtitle.h>
#import <SwaggerClient/SWGTrack.h>
#import <SwaggerClient/SWGTrackPrimaryGenres.h>
#import <SwaggerClient/SWGTrackPrimaryGenresMusicGenre.h>
#import <SwaggerClient/SWGTrackPrimaryGenresMusicGenreList.h>
#import <SwaggerClient/SWGTrackSecondaryGenres.h>
#import <SwaggerClient/SWGTrackSecondaryGenresMusicGenre.h>
#import <SwaggerClient/SWGTrackSecondaryGenresMusicGenreList.h>
// load API classes for accessing endpoints
#import <SwaggerClient/SWGAlbumApi.h>
#import <SwaggerClient/SWGArtistApi.h>
#import <SwaggerClient/SWGLyricsApi.h>
#import <SwaggerClient/SWGSnippetApi.h>
#import <SwaggerClient/SWGSubtitleApi.h>
#import <SwaggerClient/SWGTrackApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issue.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apikey"];


NSString* *albumId = @"albumId_example"; // The musiXmatch album id
NSString* *format = @"json"; // output format: json, jsonp, xml. (optional) (default to json)
NSString* *callback = @"callback_example"; // jsonp callback (optional)

SWGAlbumApi *apiInstance = [[SWGAlbumApi alloc] init];

// 
[apiInstance albumGetGetWithAlbumId:albumId
    format:format
    callback:callback
              completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.musixmatch.com/ws/1.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SWGAlbumApi* | [**albumGetGet**](docs/SWGAlbumApi.md#albumgetget) | **GET** /album.get | 
*SWGAlbumApi* | [**artistAlbumsGetGet**](docs/SWGAlbumApi.md#artistalbumsgetget) | **GET** /artist.albums.get | 
*SWGArtistApi* | [**artistGetGet**](docs/SWGArtistApi.md#artistgetget) | **GET** /artist.get | 
*SWGArtistApi* | [**artistRelatedGetGet**](docs/SWGArtistApi.md#artistrelatedgetget) | **GET** /artist.related.get | 
*SWGArtistApi* | [**artistSearchGet**](docs/SWGArtistApi.md#artistsearchget) | **GET** /artist.search | 
*SWGArtistApi* | [**chartArtistsGetGet**](docs/SWGArtistApi.md#chartartistsgetget) | **GET** /chart.artists.get | 
*SWGLyricsApi* | [**matcherLyricsGetGet**](docs/SWGLyricsApi.md#matcherlyricsgetget) | **GET** /matcher.lyrics.get | 
*SWGLyricsApi* | [**trackLyricsGetGet**](docs/SWGLyricsApi.md#tracklyricsgetget) | **GET** /track.lyrics.get | 
*SWGSnippetApi* | [**trackSnippetGetGet**](docs/SWGSnippetApi.md#tracksnippetgetget) | **GET** /track.snippet.get | 
*SWGSubtitleApi* | [**matcherSubtitleGetGet**](docs/SWGSubtitleApi.md#matchersubtitlegetget) | **GET** /matcher.subtitle.get | 
*SWGSubtitleApi* | [**trackSubtitleGetGet**](docs/SWGSubtitleApi.md#tracksubtitlegetget) | **GET** /track.subtitle.get | 
*SWGTrackApi* | [**albumTracksGetGet**](docs/SWGTrackApi.md#albumtracksgetget) | **GET** /album.tracks.get | 
*SWGTrackApi* | [**chartTracksGetGet**](docs/SWGTrackApi.md#charttracksgetget) | **GET** /chart.tracks.get | 
*SWGTrackApi* | [**matcherTrackGetGet**](docs/SWGTrackApi.md#matchertrackgetget) | **GET** /matcher.track.get | 
*SWGTrackApi* | [**trackGetGet**](docs/SWGTrackApi.md#trackgetget) | **GET** /track.get | 
*SWGTrackApi* | [**trackSearchGet**](docs/SWGTrackApi.md#tracksearchget) | **GET** /track.search | 


## Documentation For Models

 - [SWGAlbum](docs/SWGAlbum.md)
 - [SWGAlbumPrimaryGenres](docs/SWGAlbumPrimaryGenres.md)
 - [SWGAlbumPrimaryGenresMusicGenre](docs/SWGAlbumPrimaryGenresMusicGenre.md)
 - [SWGAlbumPrimaryGenresMusicGenreList](docs/SWGAlbumPrimaryGenresMusicGenreList.md)
 - [SWGArtist](docs/SWGArtist.md)
 - [SWGArtistArtistAliasList](docs/SWGArtistArtistAliasList.md)
 - [SWGArtistArtistCredits](docs/SWGArtistArtistCredits.md)
 - [SWGArtistArtistNameTranslation](docs/SWGArtistArtistNameTranslation.md)
 - [SWGArtistArtistNameTranslationList](docs/SWGArtistArtistNameTranslationList.md)
 - [SWGArtistPrimaryGenres](docs/SWGArtistPrimaryGenres.md)
 - [SWGArtistPrimaryGenresMusicGenre](docs/SWGArtistPrimaryGenresMusicGenre.md)
 - [SWGArtistPrimaryGenresMusicGenreList](docs/SWGArtistPrimaryGenresMusicGenreList.md)
 - [SWGArtistSecondaryGenres](docs/SWGArtistSecondaryGenres.md)
 - [SWGInlineResponse200](docs/SWGInlineResponse200.md)
 - [SWGInlineResponse2001](docs/SWGInlineResponse2001.md)
 - [SWGInlineResponse20010](docs/SWGInlineResponse20010.md)
 - [SWGInlineResponse20010Message](docs/SWGInlineResponse20010Message.md)
 - [SWGInlineResponse20010MessageBody](docs/SWGInlineResponse20010MessageBody.md)
 - [SWGInlineResponse2001Message](docs/SWGInlineResponse2001Message.md)
 - [SWGInlineResponse2001MessageBody](docs/SWGInlineResponse2001MessageBody.md)
 - [SWGInlineResponse2001MessageHeader](docs/SWGInlineResponse2001MessageHeader.md)
 - [SWGInlineResponse2002](docs/SWGInlineResponse2002.md)
 - [SWGInlineResponse2002Message](docs/SWGInlineResponse2002Message.md)
 - [SWGInlineResponse2002MessageBody](docs/SWGInlineResponse2002MessageBody.md)
 - [SWGInlineResponse2002MessageHeader](docs/SWGInlineResponse2002MessageHeader.md)
 - [SWGInlineResponse2003](docs/SWGInlineResponse2003.md)
 - [SWGInlineResponse2003Message](docs/SWGInlineResponse2003Message.md)
 - [SWGInlineResponse2003MessageBody](docs/SWGInlineResponse2003MessageBody.md)
 - [SWGInlineResponse2004](docs/SWGInlineResponse2004.md)
 - [SWGInlineResponse2004Message](docs/SWGInlineResponse2004Message.md)
 - [SWGInlineResponse2004MessageBody](docs/SWGInlineResponse2004MessageBody.md)
 - [SWGInlineResponse2005](docs/SWGInlineResponse2005.md)
 - [SWGInlineResponse2005Message](docs/SWGInlineResponse2005Message.md)
 - [SWGInlineResponse2005MessageHeader](docs/SWGInlineResponse2005MessageHeader.md)
 - [SWGInlineResponse2006](docs/SWGInlineResponse2006.md)
 - [SWGInlineResponse2006Message](docs/SWGInlineResponse2006Message.md)
 - [SWGInlineResponse2006MessageBody](docs/SWGInlineResponse2006MessageBody.md)
 - [SWGInlineResponse2006MessageBodyTrackList](docs/SWGInlineResponse2006MessageBodyTrackList.md)
 - [SWGInlineResponse2007](docs/SWGInlineResponse2007.md)
 - [SWGInlineResponse2007Message](docs/SWGInlineResponse2007Message.md)
 - [SWGInlineResponse2007MessageBody](docs/SWGInlineResponse2007MessageBody.md)
 - [SWGInlineResponse2008](docs/SWGInlineResponse2008.md)
 - [SWGInlineResponse2008Message](docs/SWGInlineResponse2008Message.md)
 - [SWGInlineResponse2008MessageBody](docs/SWGInlineResponse2008MessageBody.md)
 - [SWGInlineResponse2009](docs/SWGInlineResponse2009.md)
 - [SWGInlineResponse2009Message](docs/SWGInlineResponse2009Message.md)
 - [SWGInlineResponse200Message](docs/SWGInlineResponse200Message.md)
 - [SWGInlineResponse200MessageBody](docs/SWGInlineResponse200MessageBody.md)
 - [SWGInlineResponse200MessageHeader](docs/SWGInlineResponse200MessageHeader.md)
 - [SWGLyrics](docs/SWGLyrics.md)
 - [SWGSnippet](docs/SWGSnippet.md)
 - [SWGSubtitle](docs/SWGSubtitle.md)
 - [SWGTrack](docs/SWGTrack.md)
 - [SWGTrackPrimaryGenres](docs/SWGTrackPrimaryGenres.md)
 - [SWGTrackPrimaryGenresMusicGenre](docs/SWGTrackPrimaryGenresMusicGenre.md)
 - [SWGTrackPrimaryGenresMusicGenreList](docs/SWGTrackPrimaryGenresMusicGenreList.md)
 - [SWGTrackSecondaryGenres](docs/SWGTrackSecondaryGenres.md)
 - [SWGTrackSecondaryGenresMusicGenre](docs/SWGTrackSecondaryGenresMusicGenre.md)
 - [SWGTrackSecondaryGenresMusicGenreList](docs/SWGTrackSecondaryGenresMusicGenreList.md)


## Documentation For Authorization


## key

- **Type**: API key
- **API key parameter name**: apikey
- **Location**: URL query string


## Author

info@musixmatch.com


