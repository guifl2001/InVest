window.$ = $;

import "bootstrap";
import AOS from 'aos';


import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { addLikes } from '../components/likes';
import { table } from '../components/table';
import { updateMyCourses } from '../components/profile';
import { initSlick} from '../components/init_slick';


AOS.init();
initUpdateNavbarOnScroll();
addLikes();
table();
updateMyCourses();
initMapbox();
initSlick();





