# frozen_string_literal: true

redis_conn = proc {
  Redis.exists_returns_integer = true
}
