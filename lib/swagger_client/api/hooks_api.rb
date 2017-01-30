=begin
#The Meltwater API

#The Meltwater API provides the needed resources for Meltwater clients to create & delete REST Hooks and stream Meltwater search results to your specified destination.

OpenAPI spec version: 0.9.0
Contact: support@api.meltwater.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class HooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an existing hook.
    # Delete an existing hook.  Removes the hook and stops sending any search results to the target_url.    Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param id Hook ID received from creating a hook
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_v1_hooks_id(user_key, authorization, id, opts = {})
      delete_v1_hooks_id_with_http_info(user_key, authorization, id, opts)
      return nil
    end

    # Delete an existing hook.
    # Delete an existing hook.  Removes the hook and stops sending any search results to the target_url.    Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param id Hook ID received from creating a hook
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_v1_hooks_id_with_http_info(user_key, authorization, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HooksApi.delete_v1_hooks_id ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling HooksApi.delete_v1_hooks_id" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling HooksApi.delete_v1_hooks_id" if authorization.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling HooksApi.delete_v1_hooks_id" if id.nil?
      # resource path
      local_var_path = "/v1/hooks/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'user-key'] = user_key
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HooksApi#delete_v1_hooks_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all hooks.
    # List all hooks.     Delivers all previously generated hooks.    Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param [Hash] opts the optional parameters
    # @return [HooksCollection]
    def get_v1_hooks(user_key, authorization, opts = {})
      data, _status_code, _headers = get_v1_hooks_with_http_info(user_key, authorization, opts)
      return data
    end

    # List all hooks.
    # List all hooks.     Delivers all previously generated hooks.    Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param [Hash] opts the optional parameters
    # @return [Array<(HooksCollection, Fixnum, Hash)>] HooksCollection data, response status code and response headers
    def get_v1_hooks_with_http_info(user_key, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HooksApi.get_v1_hooks ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling HooksApi.get_v1_hooks" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling HooksApi.get_v1_hooks" if authorization.nil?
      # resource path
      local_var_path = "/v1/hooks".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'user-key'] = user_key
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HooksCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HooksApi#get_v1_hooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a hook for one of your predefined searches.
    # Creates a hook for one of your predefined searches.  Delivers search results for the query referenced by thesearch_id to the target_url via HTTP POST. Note that a hook id will be returned on successful creation, this id is needed to delete the hook.     Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param v1_hooks 
    # @param [Hash] opts the optional parameters
    # @return [Hook]
    def post_v1_hooks(user_key, authorization, v1_hooks, opts = {})
      data, _status_code, _headers = post_v1_hooks_with_http_info(user_key, authorization, v1_hooks, opts)
      return data
    end

    # Creates a hook for one of your predefined searches.
    # Creates a hook for one of your predefined searches.  Delivers search results for the query referenced by thesearch_id to the target_url via HTTP POST. Note that a hook id will be returned on successful creation, this id is needed to delete the hook.     Requires an OAuth access token.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param v1_hooks 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hook, Fixnum, Hash)>] Hook data, response status code and response headers
    def post_v1_hooks_with_http_info(user_key, authorization, v1_hooks, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HooksApi.post_v1_hooks ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling HooksApi.post_v1_hooks" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling HooksApi.post_v1_hooks" if authorization.nil?
      # verify the required parameter 'v1_hooks' is set
      fail ArgumentError, "Missing the required parameter 'v1_hooks' when calling HooksApi.post_v1_hooks" if v1_hooks.nil?
      # resource path
      local_var_path = "/v1/hooks".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'user-key'] = user_key
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(v1_hooks)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HooksApi#post_v1_hooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
