import Home from './views/Home.svelte';
import About from './views/About.svelte';
import NotFound from './views/NotFound.svelte';
import Greeting from './views/tutorials/Greeting.svelte';
import Counter from './views/tutorials/Counter.svelte';
import Resources from './views/Resources.svelte';
import MinMax from './views/tutorials/MinMax.svelte';
import ChallengeOne from './views/tutorials/ChallengeOne.svelte';
export const routes = {
    // Exact path
    '/': Home,
    // Exact path
    '/about': About,
    '/resources': Resources,
    // Tutorials
    '/greeting': Greeting,
    '/counter': Counter,
    '/min-max': MinMax,
    '/challenge-one': ChallengeOne,
    // Using named parameters, with last being optional
    // '/author/:first/:last?': Author,
    // Wildcard parameter
    // '/book/*': Book,
    // Catch-all
    // This is optional, but if present it must be the last
    '*': NotFound,
};
//# sourceMappingURL=routes.js.map