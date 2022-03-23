window.addEventListener('load', () => {
    const buttonlisiner = document.querySelector('button.input-btn');
    buttonlisiner.addEventListener('click', (event) =>
        console.log('click', event)
    );
});
