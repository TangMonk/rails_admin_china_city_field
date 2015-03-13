require "rails_admin_china_city_field/engine"

module RailsAdminChinaCityField
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin::Config::Fields::Types
  class ChinaCityField < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:china_city, self)

    def initialize(parent, name, properties)
      super(parent, name, properties)
    end

    register_instance_option(:province_field) do
      "province"
    end

    register_instance_option(:city_field) do
      "city"
    end

    register_instance_option(:district_field) do
      "district"
    end

    register_instance_option(:partial) do
      :form_china_city_field
    end

    register_instance_option :allowed_methods do
      ["#{@name}_attributes"]
    end

    register_instance_option :render do
      bindings[:object].send("build_#{@name}") if bindings[:object].send(@name).nil?
      bindings[:view].render partial: "rails_admin/main/#{partial}", locals: {field: self, form: bindings[:form]}
    end

    def province_value
      bindings[:object].send(@name).try province_field
    end

    def city_value
      bindings[:object].send(@name).try city_field
    end

    def district_value
      bindings[:object].send(@name).try district_field
    end

    def province_dom_name
      form_tag_id(bindings[:form].object_name, @name) + '_province'
    end

    def city_dom_name
      form_tag_id(bindings[:form].object_name, @name) + '_city'
    end

    def district_dom_name
      form_tag_id(bindings[:form].object_name, @name) + '_district'
    end

    def sanitized_object_name(object_name)
      object_name.gsub(/]\[|[^-a-zA-Z0-9:.]/,"_").sub(/_$/,"")
    end

    def form_tag_id(object_name, field)
      "#{sanitized_object_name(object_name.to_s)}_#{field.to_s}"
    end

  end
end