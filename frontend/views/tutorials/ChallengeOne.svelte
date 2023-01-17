<script lang="ts">
    import { playground } from 'canisters/playground';
    import Multiply from './lib/Multiply.svelte';
    import Volume from './lib/Volume.svelte';
    import HoursToMinues from './lib/HoursToMinues.svelte';
    import CounterSetGet from './lib/CounterSetGet.svelte';
    import TestDivide from './lib/TestDivide.svelte';
    import IsEven from './lib/IsEven.svelte';

    let challenges = [
        {
            id: 1,
            title: 'Multiply',
            des: 'Write a function multiply that takes two natural numbers and returns the product',
        },
        {
            id: 2,
            title: 'Volume',
            des: 'Write a function volume that takes a natural number n and returns the volume of a cube with side length n.',
        },
        {
            id: 3,
            title: 'Hours To Minutes',
            des: 'Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.',
        },
        {
            id: 4,
            title: 'Set & Get Counter',
            des: 'Write two functions set_counter & get_counter ',
        },
        {
            id: 5,
            title: 'Test Divide',
            des: 'Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.',
        },
        {
            id: 6,
            title: 'Is Even',
            des: 'Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.',
        },
    ];
</script>

<div class="flex flex-col justify-center items-center">
    <p class="text-4xl font-bold mt-20 mb-8">Day One Challenges</p>

    <div class="my-12 grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {#each challenges as i}
            <div class="card w-full bg-neutral text-neutral-content">
                <div class="card-body items-center text-center">
                    <h2 class="card-title">{i.title}</h2>
                    <p class="text-xs">{i.des}</p>
                    {#if i.id == 1}
                        <Multiply />
                    {:else if i.id == 2}
                        <Volume />
                    {:else if i.id == 3}
                        <HoursToMinues />
                    {:else if i.id == 4}
                        <CounterSetGet />
                    {:else if i.id == 5}
                        <TestDivide />
                    {:else if i.id == 6}
                        <IsEven />
                    {/if}
                </div>
            </div>
        {/each}
    </div>
    <a
        class="font-bold  hover:text-[#3abff8] mt-6"
        href="https://gist.github.com/fermartz/b382d6cb34f0c4c67697dd553291f362"
        target="_blank"
        rel="noopener noreferrer">SEE CODE</a
    >
</div>
