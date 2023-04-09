defmodule Blogger do
  use HTTPoison.Base

  def fetch_blog(url) do
    HTTPoison.get(url)

  end
  def func(list) do
    Enum.map(list,fn(item) ->
      String.upcase(item)
    end)
  end


end

my_array = ["cow","goat","sheep"]
upcase_array = Blogger.MixProject.func(my_array)
IO.inspect upcase_array

request_url = "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
req = Blogger.MixProject.fetch_blog(request_url)
IO.inspect req
