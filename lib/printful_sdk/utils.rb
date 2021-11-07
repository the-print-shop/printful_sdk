module PrintfulSdk
  module Utils
    def self.wrap(resource)
      klass = Class.new(Dry::Struct)
      klass.transform_keys(&:to_sym)
      class_name = resource.name.split("::").last
      key = class_name.gsub(/(.)([A-Z])/,'\1_\2').downcase.to_sym
      klass.attribute(key, resource)
      klass
    end
  end
end