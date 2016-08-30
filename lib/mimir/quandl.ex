defmodule Mimir.Quandl do

  @api_key Application.get_env(:mimir, :quandl_api_key)

  def gold_volatility do
    process_query "CBOE/GVZ.json?api_key="
  end

  def process_query query_url do
    HTTPoison.get("https://www.quandl.com/api/v3/datasets/" <> query_url <> @api_key)
  end
  
end
