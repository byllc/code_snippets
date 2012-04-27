#inline rescue, there is an implicit begin on each line so you can use a traililng rescue
1/0 rescue nil


#multiple exceptions
module SomeErrors
  SomeExceptions = [
    SocketError,
    EOFError,
    Timeout::Error,
  ]
end
begin
  RestClient.post("http://random/api")
rescue *ApiError::HttpExceptions => e
  logger.error(e)
end