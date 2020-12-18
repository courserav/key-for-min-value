# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    compare_value = nil
    compare_key = nil
    name_hash.collect do |k, v|
       if compare_value == nil
        compare_value = v
        compare_key = k
       elsif compare_value > v
        compare_value = v
        compare_key = k
       end
    end
    compare_key
end