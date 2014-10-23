require "./comedian2_client"

jonny = Comedian2Client.new("http://localhost:4567")

jonny.add_joke("Weird, wild stuff.")

jonny.print_joke

