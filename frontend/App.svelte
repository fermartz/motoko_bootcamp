<script lang="ts">
    import './app.css';
    import Router from 'svelte-spa-router';
    import { routes } from './routes';

    const d = new Date();
    let year = d.getFullYear();

    // console.log('url', window.location.href);
</script>

<div class="lg:container lg:mx-auto px-4 min-h-screen ">
    <div class="min-h-screen flex flex-col">
        <div class=" flex-none">
            <header class="my-4">
                <a class="hover:text-[#3abff8] font-bold" href="#/">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 64 64"
                        width="120"
                        height="120"
                        class="small-svg-logo"
                    >
                        <style>
                            .small-svg-logo {
                                display: inline;
                                fill: #3abff8;
                                stroke: none;
                            }
                            .small-svg-text {
                                text-anchor: middle;
                                stroke: none;
                                fill: #11394a;
                                font-family: 'system-ui';
                            }
                        </style>
                        <circle cx="32" cy="32" r="28" stroke-width="2" />
                        <text
                            x="32"
                            y="42"
                            font-size="2.8rem"
                            class="small-svg-text">μ</text
                        >
                    </svg>
                    <span class="text-4xl">Motoko Bootcamp</span>
                </a>
            </header>
        </div>

        <div class=" flex-grow">
            <Router {routes} />
        </div>

        <div class="flex-none justify-self-end">
            <footer class="flex justify-between my-20">
                <div>
                    <a class=" hover:text-[#3abff8] font-bold " href="#/"
                        >HOME</a
                    >
                    <a
                        class="font-bold  hover:text-[#3abff8] ml-2"
                        href="#/about">ABOUT</a
                    >
                    <a
                        class="font-bold  hover:text-[#3abff8] ml-2"
                        href="https://github.com/ferMartz"
                        target="_blank"
                        rel="noopener noreferrer">GITHUB</a
                    >
                </div>

                <div><p class="font-bold">© {year} - MOTOKO BOOTCAMP</p></div>
            </footer>
        </div>
    </div>
</div>
