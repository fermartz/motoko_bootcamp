<script lang="ts">
    import { playground } from 'canisters/playground';
    import { onMount } from 'svelte';

    let count: number = 0;
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
    <div class="mockup-code bg-primary text-primary-content mt-10">
        <pre><code>var count : Int = 0&#59;</code></pre>
        <br />
        <pre><code>public func increment() : async () &#123;</code></pre>
        <pre><code>count += 1&#59; </code></pre>
        <pre><code>&#125;&#59;</code></pre>
        <br />
        <pre><code>public func get_value() : async Int &#123;</code></pre>
        <pre><code>count&#59; </code></pre>
        <pre><code>&#125;&#59;</code></pre>
    </div>
</div>
