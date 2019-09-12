const hideModal = () => {
  let modal = document.querySelector('.close')
  modal.addEventListener('click', () => {
    console.log('Sou Brunozão')
    $('#chatModal').modal('hide');
   });
};

export { hideModal };
