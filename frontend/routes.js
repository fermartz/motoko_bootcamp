import Home from './views/Home.svelte';
import About from './views/About.svelte';
import NotFound from './views/NotFound.svelte';
import Greeting from './views/tutorials/Greeting.svelte';
import Counter from './views/tutorials/Counter.svelte';

export const routes = {
    // Exact path
    '/': Home,

    // Exact path
    '/about': About,

    // Tutorials
    '/greeting': Greeting,
    '/counter': Counter,
   

    // Using named parameters, with last being optional
    // '/author/:first/:last?': Author,

    // Wildcard parameter
    // '/book/*': Book,

    // Catch-all
    // This is optional, but if present it must be the last
    '*': NotFound,
};
