defmodule Mimir.Quandl do
  require Logger

  @json_api_url ".json?api_key="
  @api_key Application.get_env(:mimir, :quandl_api_key)

  @gold_volatility_url "CBOE/GVZ"

  def gold_volatility do
    Logger.info("Quandl GET - gold volatility...")
    
    get_quandl_json(@gold_volatility_url)
    |> process_json
    |> get_data
  end

  defp get_quandl_json query_url do
    HTTPoison.get("https://www.quandl.com/api/v3/datasets/" <> query_url <> @json_api_url <> @api_key)
  end

  defp process_json {:error, reason} do
    Logger.error("Quandl GET failed. reason: " <> reason)
  end

  defp process_json {:ok, response} do
    Logger.info("Quandl GET success - processing...")
    Poison.decode!(response.body, as: %Mimir.Quandl.Data{})
  end

  defp get_data json do
    json.dataset["data"]
  end

end
