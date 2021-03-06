# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Properties of Backend address pool settings of application gateway
    #
    class ApplicationGatewayBackendHttpSettingsPropertiesFormat

      include MsRestAzure

      # @return [Integer] Gets or sets the port
      attr_accessor :port

      # @return [ApplicationGatewayProtocol] Gets or sets the protocol.
      # Possible values for this property include: 'Http', 'Https'.
      attr_accessor :protocol

      # @return [ApplicationGatewayCookieBasedAffinity] Gets or sets the
      # cookie affinity. Possible values for this property include:
      # 'Enabled', 'Disabled'.
      attr_accessor :cookie_based_affinity

      # @return [String] Gets or sets Provisioning state of the backend http
      # settings resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.port
        output_object['port'] = serialized_property unless serialized_property.nil?

        serialized_property = object.protocol
        output_object['protocol'] = serialized_property unless serialized_property.nil?

        serialized_property = object.cookie_based_affinity
        output_object['cookieBasedAffinity'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ApplicationGatewayBackendHttpSettingsPropertiesFormat]
      # Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ApplicationGatewayBackendHttpSettingsPropertiesFormat.new

        deserialized_property = object['port']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.port = deserialized_property

        deserialized_property = object['protocol']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = ApplicationGatewayProtocol.constants.any? { |e| ApplicationGatewayProtocol.const_get(e).to_s.downcase == deserialized_property.downcase }
          fail MsRest::DeserializationError.new('Error occured while deserializing the enum', nil, nil, nil) unless enum_is_valid
        end
        output_object.protocol = deserialized_property

        deserialized_property = object['cookieBasedAffinity']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = ApplicationGatewayCookieBasedAffinity.constants.any? { |e| ApplicationGatewayCookieBasedAffinity.const_get(e).to_s.downcase == deserialized_property.downcase }
          fail MsRest::DeserializationError.new('Error occured while deserializing the enum', nil, nil, nil) unless enum_is_valid
        end
        output_object.cookie_based_affinity = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
