# frozen_string_literal: true

# Copyright The OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

module OpenTelemetry
  module SDK
    module Metrics
      module State
        # @api private
        #
        # The Observations class supports asynchronous instrument callbacks.
        class Observations
          attr_reader :data

          def initialize
            @data = []
          end

          def observe(value, attributes = {})
            @data << [value, attributes]
          end
        end
      end
    end
  end
end
