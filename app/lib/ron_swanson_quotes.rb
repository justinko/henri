module RonSwansonQuotes
  def self.get
    HTTPX.get("https://ron-swanson-quotes.herokuapp.com/v2/quotes").json.first
  end
end
