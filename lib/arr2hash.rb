# frozen_string_literal: true

require_relative "arr2hash/version"

module Arr2hash
  class Error < StandardError; end
  def self.a_to_hash(array)
    return {} if array.empty?

    keys = array[0]
    array[1..-1].map do |values|
      Hash[keys.zip(values)]
    end
  end
end
