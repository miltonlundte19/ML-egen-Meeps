window.addEventListener('load', () => {
    const buttonlisiner = document.querySelector('button.input-btn');
    const textinputlabel = document.querySelector('input[type="text"]');
    buttonlisiner.addEventListener('click', (event) => {
        const textinput = textinputlabel.value;
        if (textinput.length < 3) {
            console.log('posten måste vara mer än 3 långt');
        } else {
            const url = '/';
            fetch(url, {
                method: 'POST',
                body: JSON.stringify({ body: textinput }),
                headers: {
                    Accept: 'application/json',
                    'Content-Type': 'application/json'
                }
            }).then();
        }
    });
});
