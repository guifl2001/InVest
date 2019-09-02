const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('navbar-lewagon-transp');
        navbar.classList.add('navbar-lewagon');
      } else {
        navbar.classList.remove('navbar-lewagon-transp');
        navbar.classList.add('navbar-lewagon');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
