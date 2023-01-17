<script lang="ts">
    import { playground } from 'canisters/playground';

    // Multiply vars
    var xMu: number = 0;
    var yMu: number = 0;
    var rMu: string = '';
    var progressMu = false;

    const multiply = async () => {
        progressMu = true;
        const res = await playground.multiply(xMu, yMu);
        var r = res.toString();
        rMu = r;
        progressMu = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xMu}
/>
<input
    type="number"
    placeholder="Y value"
    class="input input-bordered w-40 my-2"
    bind:value={yMu}
/>
<p class="text-sm text-primary">Result : {rMu}</p>
{#if progressMu == false}
    <button class="btn btn-outline btn-primary mt-4" on:click={multiply}>
        get result
    </button>
{:else}
    <button
        class="btn btn-outline btn-primary mt-4"
        on:click={multiply}
        disabled
    >
        get result
    </button>
{/if}
