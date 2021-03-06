# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Properties of VirtualNetworkGatewayIPConfiguration
    #
    class VirtualNetworkGatewayIpConfigurationPropertiesFormat

      include MsRestAzure

      # @return [String] Gets or sets the privateIPAddress of the Network
      # Interface IP Configuration
      attr_accessor :private_ipaddress

      # @return [IpAllocationMethod] Gets or sets PrivateIP allocation method
      # (Static/Dynamic). Possible values for this property include:
      # 'Static', 'Dynamic'.
      attr_accessor :private_ipallocation_method

      # @return [SubResource] Gets or sets the reference of the subnet resource
      attr_accessor :subnet

      # @return [SubResource] Gets or sets the reference of the PublicIP
      # resource
      attr_accessor :public_ipaddress

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @subnet.validate unless @subnet.nil?
        @public_ipaddress.validate unless @public_ipaddress.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.private_ipaddress
        output_object['privateIPAddress'] = serialized_property unless serialized_property.nil?

        serialized_property = object.private_ipallocation_method
        output_object['privateIPAllocationMethod'] = serialized_property unless serialized_property.nil?

        serialized_property = object.subnet
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['subnet'] = serialized_property unless serialized_property.nil?

        serialized_property = object.public_ipaddress
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['publicIPAddress'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualNetworkGatewayIpConfigurationPropertiesFormat]
      # Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualNetworkGatewayIpConfigurationPropertiesFormat.new

        deserialized_property = object['privateIPAddress']
        output_object.private_ipaddress = deserialized_property

        deserialized_property = object['privateIPAllocationMethod']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = IpAllocationMethod.constants.any? { |e| IpAllocationMethod.const_get(e).to_s.downcase == deserialized_property.downcase }
          fail MsRest::DeserializationError.new('Error occured while deserializing the enum', nil, nil, nil) unless enum_is_valid
        end
        output_object.private_ipallocation_method = deserialized_property

        deserialized_property = object['subnet']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.subnet = deserialized_property

        deserialized_property = object['publicIPAddress']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.public_ipaddress = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
