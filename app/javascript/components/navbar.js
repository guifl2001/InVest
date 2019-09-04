const rootPath = () => {
  if (window.location.pathname === '/') { return true };
  if (window.location.pathname.includes('users/')) { return true };
  return false
}


const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  const root = window.location.pathname
  if (navbar && rootPath()) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= (window.innerHeight - 200)) {
        navbar.classList.remove('transparent');
      } else {
        navbar.classList.add('transparent');
      }
    });
  } else if (!rootPath()) {
    navbar.classList.remove('transparent');
  }
}

export { initUpdateNavbarOnScroll };
