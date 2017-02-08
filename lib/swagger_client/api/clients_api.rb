=begin
#The Meltwater API

#The Meltwater API provides the needed resources for Meltwater clients to create & delete REST Hooks and stream Meltwater search results to your specified destination.

OpenAPI spec version: 1.0.0
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
  class ClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Register new client
    # Register new client     Creates a new pair of client credentials (`client_id`/`client_secret` pair).  Requires your Meltwater credentials (`email`:`password`) to authenticate.   #### Appendix    The Base64-encoded `email`:`password` string can be generated in a terminal  with following command:        $ echo -n \"your_email@your_domain.com:your_secret_password\" | base64    <i>You will need `base64` installed.</i>
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param authorization &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D;
    # @param [Hash] opts the optional parameters
    # @return [ClientCredentials]
    def create_client_credentials(user_key, authorization, opts = {})
      data, _status_code, _headers = create_client_credentials_with_http_info(user_key, authorization, opts)
      return data
    end

    # Register new client
    # Register new client     Creates a new pair of client credentials (&#x60;client_id&#x60;/&#x60;client_secret&#x60; pair).  Requires your Meltwater credentials (&#x60;email&#x60;:&#x60;password&#x60;) to authenticate.   #### Appendix    The Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; string can be generated in a terminal  with following command:        $ echo -n \&quot;your_email@your_domain.com:your_secret_password\&quot; | base64    &lt;i&gt;You will need &#x60;base64&#x60; installed.&lt;/i&gt;
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param authorization &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D;
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientCredentials, Fixnum, Hash)>] ClientCredentials data, response status code and response headers
    def create_client_credentials_with_http_info(user_key, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.create_client_credentials ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling ClientsApi.create_client_credentials" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling ClientsApi.create_client_credentials" if authorization.nil?
      # resource path
      local_var_path = "/v1/clients".sub('{format}','json')

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientCredentials')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#create_client_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete client.
    # Delete client.    Deletes your current client credentials consisting of  client_id and client_secret. After calling this resource, you will not be able  to use the Meltwater API unless you create a new set of client credentials!  Requires your Meltwater credentials (`email`:`password`) to authenticate.   #### Appendix    The Base64-encoded `email`:`password` string can be generated in a terminal  with following command:        $ echo -n \"your_email@your_domain.com:your_secret_password\" | base64    <i>You will need `base64` installed.</i>
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param authorization &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D;
    # @param client_id Client ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_client_credentials(user_key, authorization, client_id, opts = {})
      delete_client_credentials_with_http_info(user_key, authorization, client_id, opts)
      return nil
    end

    # Delete client.
    # Delete client.    Deletes your current client credentials consisting of  client_id and client_secret. After calling this resource, you will not be able  to use the Meltwater API unless you create a new set of client credentials!  Requires your Meltwater credentials (&#x60;email&#x60;:&#x60;password&#x60;) to authenticate.   #### Appendix    The Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; string can be generated in a terminal  with following command:        $ echo -n \&quot;your_email@your_domain.com:your_secret_password\&quot; | base64    &lt;i&gt;You will need &#x60;base64&#x60; installed.&lt;/i&gt;
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param authorization &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D;
    # @param client_id Client ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_client_credentials_with_http_info(user_key, authorization, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.delete_client_credentials ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling ClientsApi.delete_client_credentials" if user_key.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling ClientsApi.delete_client_credentials" if authorization.nil?
      # verify the required parameter 'client_id' is set
      fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.delete_client_credentials" if client_id.nil?
      # resource path
      local_var_path = "/v1/clients/{client_id}".sub('{format}','json').sub('{' + 'client_id' + '}', client_id.to_s)

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
        @api_client.config.logger.debug "API called: ClientsApi#delete_client_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
