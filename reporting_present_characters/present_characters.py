def presentCharacters(str):
    characters = {}
    
    for char in str:
        if char in characters:
            characters[char.lower()] += 1
        else:
            characters[char.lower()] = 1
    
    return characters
            
print(presentCharacters("hello"))
print(presentCharacters("Roberto"))
print(presentCharacters("Testing with a long string there should be 6 s with this string!"))
                