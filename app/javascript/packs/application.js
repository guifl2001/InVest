import "bootstrap";



import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css';
import AOS from 'aos';
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';

initUpdateNavbarOnScroll();
loadDynamicBannerText();
initMapbox();

import { table } from '../components/table';
table();

AOS.init();
