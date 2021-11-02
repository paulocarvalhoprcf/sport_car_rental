import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: [" BMW", " Mercedes", " Porsche", " Ferrari", " Lamborghini", " Car"],
    typeSpeed: 100,
    loop: false
  });
}

export { loadDynamicBannerText };
