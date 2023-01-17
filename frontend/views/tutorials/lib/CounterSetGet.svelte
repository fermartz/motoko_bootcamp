<script lang="ts">
    import { playground } from 'canisters/playground';

    // Set & Get Counter vars
    var xCo: number = 0;

    var rCo: string = '';
    var progressCo = false;

    const counterSet = async () => {
        progressCo = true;
        rCo = '';
        const res = await playground.set_counter(xCo);
        progressCo = false;
    };

    const counterGet = async () => {
        progressCo = true;
        const res = await playground.get_counter();
        var r = res.toString();
        rCo = r;
        progressCo = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xCo}
/>
<p class="text-sm text-primary">Result : {rCo}</p>
{#if progressCo == false}
    <div class="card-actions justify-center mr-6">
        <button class="btn btn-outline btn-primary mt-4" on:click={counterSet}>
            set counter
        </button>
        <button class="btn btn-outline btn-primary mt-4" on:click={counterGet}>
            get counter
        </button>
    </div>
{:else}
    <div class="card-actions justify-center">
        <button
            class="btn btn-outline btn-primary mt-4 mr-6"
            on:click={counterSet}
            disabled
        >
            set counter
        </button>
        <button
            class="btn btn-outline btn-primary mt-4  ml-6"
            on:click={counterGet}
            disabled
        >
            get counter
        </button>
    </div>
{/if}
