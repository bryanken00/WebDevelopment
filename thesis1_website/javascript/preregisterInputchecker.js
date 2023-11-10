function validateLetters(input) {
    // Remove non-letter characters
    input.value = input.value.replace(/[^a-zA-Z]/g, '');
}

function validateEmailInput(input) {
    // Remove any repeated '@' characters
    input.value = input.value.replace(/@+/g, '@');

    // Remove characters other than letters, digits, '@', '.', '_', and '-'
    input.value = input.value.replace(/[^a-zA-Z0-9@._-]/g, '');
}