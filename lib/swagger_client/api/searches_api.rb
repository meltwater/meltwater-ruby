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
  class SearchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List your saved searches.
    # List your saved searches.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param [Hash] opts the optional parameters
    # @return [SearchesCollection]
    def get_v1_searches(user_key, authorization, opts = {})
      data, _status_code, _headers = get_v1_searches_with_http_info(user_key, authorization, opts)
      return data
    end

    # List your saved searches.
    # List your saved searches.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
    # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchesCollection, Fixnum, Hash)>] SearchesCollection data, response status code and response headers
    def get_v1_searches_with_http_info(user_key, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchesApi.get_v1_searches ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling SearchesApi.get_v1_searches" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling SearchesApi.get_v1_searches" if authorization.nil?
      # resource path
      local_var_path = "/v1/searches".sub('{format}','json')

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
        :return_type => 'SearchesCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchesApi#get_v1_searches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
