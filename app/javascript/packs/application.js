import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css';
import AOS from 'aos';
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';
<<<<<<< HEAD

=======
loadDynamicBannerText();
>>>>>>> 726dd0b389e63a852f3f2a62cc4936d444d401c4

initUpdateNavbarOnScroll();
loadDynamicBannerText();
initMapbox();

import { table } from '../components/table';
table();

AOS.init();
loadDynamicBannerText();
