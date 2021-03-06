=begin
#Meltwater Streaming API v2

#The Meltwater Streaming API provides the needed resources for Meltwater clients to create & delete REST Hooks and stream Meltwater search results to your specified destination.

OpenAPI spec version: 2.0.0
Contact: support@api.meltwater.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class SwaggerDocApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Meltwater API Swagger Spec
    # Get the complete Swagger Spec that describes all Meltwater API endpoints.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_complete_swagger_spec(user_key, opts = {})
      get_complete_swagger_spec_with_http_info(user_key, opts)
      return nil
    end

    # Meltwater API Swagger Spec
    # Get the complete Swagger Spec that describes all Meltwater API endpoints.
    # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_complete_swagger_spec_with_http_info(user_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SwaggerDocApi.get_complete_swagger_spec ..."
      end
      # verify the required parameter 'user_key' is set
      fail ArgumentError, "Missing the required parameter 'user_key' when calling SwaggerDocApi.get_complete_swagger_spec" if user_key.nil?
      # resource path
      local_var_path = "/v2/swagger_doc".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'user-key'] = user_key

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwaggerDocApi#get_complete_swagger_spec\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
