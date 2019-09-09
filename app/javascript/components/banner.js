import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Onde estudar?", "Qual vai ser minha carreira?  "],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
