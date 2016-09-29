Transform(/^(-?\d+)$/) do |number|
  number.to_i
end

Transform(/^(-?\D+)$/) do |boolean|
  boolean.to_bool
end