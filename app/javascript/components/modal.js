const hideModal = () => {
  const modal = document.querySelector('.close')
  if (modal) {
    modal.addEventListener('click', () => {
      console.log('Sou Brunozão')
      $('#chatModal').modal('hide');
     });
  }
};

export { hideModal };
