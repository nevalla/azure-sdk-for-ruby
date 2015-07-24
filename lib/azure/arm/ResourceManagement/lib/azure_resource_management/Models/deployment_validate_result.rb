# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Resources
  module Models
    #
    # Information from validate template deployment response.
    #
    class DeploymentValidateResult
      # @return [ResourceManagementErrorWithDetails] Gets or sets validation
      # error.
      attr_accessor :error

      # @return [DeploymentPropertiesExtended] Gets or sets the template
      # deployment properties.
      attr_accessor :properties

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @error.validate unless @error.nil?
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.error
        if (serialized_property)
          serialized_property = Azure::ARM::Resources::Models::ResourceManagementErrorWithDetails.serialize_object(serialized_property)
        end
        output_object['error'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        if (serialized_property)
          serialized_property = Azure::ARM::Resources::Models::DeploymentPropertiesExtended.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [DeploymentValidateResult] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = DeploymentValidateResult.new

        deserialized_property = object['error']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Resources::Models::ResourceManagementErrorWithDetails.deserialize_object(deserialized_property)
        end
        output_object.error = deserialized_property

        deserialized_property = object['properties']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Resources::Models::DeploymentPropertiesExtended.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
