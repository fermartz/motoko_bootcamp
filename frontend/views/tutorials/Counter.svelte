<script lang="ts">
    import { playground } from 'canisters/playground';
    import { onMount } from 'svelte';

    let count;
    let progress: boolean = false;

    const refreshCounter = async () => {
        const res: any = await playground.get_value();
        count = res.toString();
        progress = false;
        console.log(count);
    };

    const increment = async () => {
        progress = true;
        await playground.increment();
        refreshCounter();
    };

    onMount(refreshCounter);
</script>

<div class="flex flex-col justify-center items-center">
    <p class="text-4xl font-bold mt-20 mb-8">Counter</p>
    {#if progress === false}
        <button
            class="btn btn-outline btn-primary block mt-8"
            on:click={increment}
        >
            Count is : {count}
        </button>
    {:else}
        <button
            class="btn btn-outline btn-primary block mt-8"
            on:click={increment}
            disabled
        >
            Count is : {count}
        </button>
    {/if}
    <a
        class="font-bold  hover:text-[#3abff8] mt-6"
        href="https://gist.github.com/fermartz/57e10b66412c5aff05d019cc76ab9902"
        target="_blank"
        rel="noopener noreferrer">SEE CODE</a
    >
</div>
