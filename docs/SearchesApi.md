# SwaggerClient::SearchesApi

All URIs are relative to *https://api.meltwater.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_searches**](SearchesApi.md#get_all_searches) | **GET** /v2/searches | List your saved searches.


# **get_all_searches**
> SearchesCollection get_all_searches(user_key, authorization)

List your saved searches.

List your saved searches.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SearchesApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...


begin
  #List your saved searches.
  result = api_instance.get_all_searches(user_key, authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchesApi->get_all_searches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 

### Return type

[**SearchesCollection**](SearchesCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



