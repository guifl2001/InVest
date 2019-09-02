const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= (window.innerHeight - 200)) {
        navbar.classList.remove('transparent');
      } else {
        navbar.classList.add('transparent');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
