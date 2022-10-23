import wikipedia

inp = input("Enter Location: ")

searched = wikipedia.search(inp)

print(f"Summary of the place: {searched[0]}")

print(wikipedia.summary(searched[0]))