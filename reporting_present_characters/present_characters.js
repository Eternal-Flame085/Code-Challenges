function presentCharacters(str) {
    let characters = {}

    for (const char of str) {
        if (char in characters) {
            characters[char.toLowerCase()] += 1
        } else {
            characters[char.toLowerCase()] = 1
        }
    }

    return characters
}

console.log(presentCharacters("Hello"))
console.log(presentCharacters("Roberto"))
console.log(presentCharacters("Testing with a long string there should be 6 s with this string!"))