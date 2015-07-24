# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Resources
  module Models
    #
    # Resource group filter.
    #
    class ResourceGroupExtendedFilter
      # @return [String] Gets or sets the tag name.
      attr_accessor :tag_name

      # @return [String] Gets or sets the tag value.
      attr_accessor :tag_value

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.tag_name
        output_object['tagName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tag_value
        output_object['tagValue'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ResourceGroupExtendedFilter] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ResourceGroupExtendedFilter.new

        deserialized_property = object['tagName']
        output_object.tag_name = deserialized_property

        deserialized_property = object['tagValue']
        output_object.tag_value = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
