<script lang="ts">
    import { playground } from 'canisters/playground';
    // Test divide vars
    var xTd: number = 0;
    var yTd: number = 0;
    var rTd: string = '';
    var progressTd = false;

    const testDivide = async () => {
        progressTd = true;
        rTd = '';
        const res = await playground.test_divide(xTd, yTd);
        var r = res.toString();

        rTd = r;
        progressTd = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xTd}
/>
<input
    type="number"
    placeholder="Yvalue"
    class="input input-bordered w-40 my-2"
    bind:value={yTd}
/>

<p class="text-sm text-primary">Result : {rTd}</p>
{#if progressTd == false}
    <div class="card-actions justify-end">
        <button class="btn btn-outline btn-primary mt-4" on:click={testDivide}>
            test divide
        </button>
    </div>
{:else}
    <div class="card-actions justify-end">
        <button
            class="btn btn-outline btn-primary mt-4"
            on:click={testDivide}
            disabled
        >
            test divide
        </button>
    </div>
{/if}
