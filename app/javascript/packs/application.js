import "bootstrap";


import { loadDynamicBannerText } from '../components/banner';

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { table } from '../components/table';
table();

import AOS from 'aos';
AOS.init();

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
if (window.location.pathname === '/') { loadDynamicBannerText() };
initMapbox();




