require "discogs"
require "pry"

wrapper = Discogs::Wrapper.new("music search", user_token: "OLOYyBwmpfSDUfWyRGKBRNdRMKVQvKRphmmipHuL")


results = wrapper.search("Fuck the pain away")
release_title = results.values[1][4][:"title"]
release_id = results.values[1][0][:"id"]


# release = wrapper.get_release(release_id)
# video = wrapper.get_release(3283445)[:"videos"][0][:"uri"]

binding.pry
"1123"
