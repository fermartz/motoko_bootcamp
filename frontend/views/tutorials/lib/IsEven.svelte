<script lang="ts">
    import { playground } from 'canisters/playground';

    // Hour to minutes vars
    var xIe: number = 0;
    var rIe: string = '';
    var progressIe = false;

    const isEven = async () => {
        progressIe = true;
        const res = await playground.is_even(xIe);
        var r = res.toString();
        rIe = r;
        progressIe = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xIe}
/>
<p class="text-sm text-primary">Result : {rIe}</p>
{#if progressIe == false}
    <button class="btn btn-outline btn-primary mt-4" on:click={isEven}>
        is even
    </button>
{:else}
    <button class="btn btn-outline btn-primary mt-4" on:click={isEven} disabled>
        is even
    </button>
{/if}
