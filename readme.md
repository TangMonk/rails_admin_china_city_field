# ChinaCity for RailsAdmin 省市区级联选择

![](http://i.imgur.com/VpO5dxu.gif)

# 依赖

[china_city](https://github.com/saberma/china_city)

# 安装

先按照[china_city gem](https://github.com/saberma/china_city) 的安装流程， 之后添加gem 到Gemfile:

## 
```
 gem 'rails_admin_china_city_field', github: 'TangMonk/rails_admin_china_city_field'
```

# 使用 (Mongoid作为example, activerecord应该也行的通)

```ruby
class Businessman
    embeds_one :address, class_name: "Address", as: :addressable # or has_one is ok.
    accepts_nested_attributes_for :address
    
    rails_admin do
        field :address, :china_city
    end
end

class Address
  include Mongoid::Document
  
  field :province, type: String
  field :city, type: String
  field :district, type: String
  
  embedded_in :addressable, polymorphic: true # or belongs_to is ok.
end
```

# 配置

设置默认的字段名称:

```ruby
    rails_admin do
        field :address, :china_city do 
            province_field :my_province
            city_field :my_city
            district_field :district
        end
    end
```

