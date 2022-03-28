window.addEventListener('load', () => {
    const buttonlisiner = document.querySelector('button.input-btn');
    const textinputlabel = document.querySelector('input[type="text"]');
    buttonlisiner.addEventListener('click', (event) => {
        const textinput = textinputlabel.value;
        if (textinput.length < 3) {
            console.log('posten moste vara mer än 3 långt');
        }
    });
});
