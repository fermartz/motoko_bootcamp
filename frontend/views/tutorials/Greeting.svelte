<script lang="ts">
    import { playground } from 'canisters/playground';
    let greet: string = '';
    let progress: Boolean = false;
    let inputValue = '';

    const getGreeting = async () => {
        greet = '';
        progress = true;
        const res: any = await playground.greeting(inputValue);
        greet = res;
        progress = false;
        console.log(res);
    };
</script>

<div class="flex flex-col justify-center items-center">
    <p class="text-4xl font-bold mt-20 mb-8">Greeting</p>
    <input
        type="text"
        placeholder="What's your name"
        class="input input-bordered w-full max-w-xs"
        bind:value={inputValue}
    />

    {#if progress === false}
        <button
            class="btn btn-outline btn-primary block mt-8"
            on:click={getGreeting}
        >
            Submit</button
        >
    {:else}
        <button
            class="btn btn-outline btn-primary block mt-8"
            on:click={getGreeting}
            disabled
        >
            Submit</button
        >
        <progress class="progress w-56 progress-info block mt-8" />
    {/if}
    <p class="mt-8">{greet}</p>

    <div class="mockup-code bg-primary text-primary-content mt-10">
        <pre><code>public func greet( i : Text) : async Text &#123;</code></pre>
        <pre><code>"Hello there" &#35; i &#35 "!!!" </code></pre>
        <pre><code>&#125;&#59;</code></pre>
    </div>
</div>
