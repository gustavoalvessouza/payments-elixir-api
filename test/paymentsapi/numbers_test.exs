defmodule Paymentsapi.Numbers do
  use ExUnit.Case

  alias Paymentsapi.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name returns de sum of numbers"
      response = Numbers.sum_from_file("numbers")

      expected_response = "file"

      assert response == expected_response

      test "when there is a file with the given name returns an error"
      response = Numbers.sum_from_file("numbers")

      expected_response = "file"

      assert response == expected_response
    end
  end
end
