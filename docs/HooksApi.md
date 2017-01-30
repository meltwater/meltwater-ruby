# SwaggerClient::HooksApi

All URIs are relative to *https://api.meltwater.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_v1_hooks_id**](HooksApi.md#delete_v1_hooks_id) | **DELETE** /v1/hooks/{id} | Delete an existing hook.
[**get_v1_hooks**](HooksApi.md#get_v1_hooks) | **GET** /v1/hooks | List all hooks.
[**post_v1_hooks**](HooksApi.md#post_v1_hooks) | **POST** /v1/hooks | Creates a hook for one of your predefined searches.


# **delete_v1_hooks_id**
> delete_v1_hooks_id(user_key, authorization, id)

Delete an existing hook.

Delete an existing hook.  Removes the hook and stops sending any search results to the target_url.    Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...

id = "id_example" # String | Hook ID received from creating a hook


begin
  #Delete an existing hook.
  api_instance.delete_v1_hooks_id(user_key, authorization, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->delete_v1_hooks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 
 **id** | **String**| Hook ID received from creating a hook | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v1_hooks**
> HooksCollection get_v1_hooks(user_key, authorization)

List all hooks.

List all hooks.     Delivers all previously generated hooks.    Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...


begin
  #List all hooks.
  result = api_instance.get_v1_hooks(user_key, authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->get_v1_hooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 

### Return type

[**HooksCollection**](HooksCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v1_hooks**
> Hook post_v1_hooks(user_key, authorization, v1_hooks)

Creates a hook for one of your predefined searches.

Creates a hook for one of your predefined searches.  Delivers search results for the query referenced by thesearch_id to the target_url via HTTP POST. Note that a hook id will be returned on successful creation, this id is needed to delete the hook.     Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...

v1_hooks = SwaggerClient::PostV1Hooks.new # PostV1Hooks | 


begin
  #Creates a hook for one of your predefined searches.
  result = api_instance.post_v1_hooks(user_key, authorization, v1_hooks)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->post_v1_hooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 
 **v1_hooks** | [**PostV1Hooks**](PostV1Hooks.md)|  | 

### Return type

[**Hook**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


