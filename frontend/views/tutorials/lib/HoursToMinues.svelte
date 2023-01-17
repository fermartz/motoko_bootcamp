<script lang="ts">
    import { playground } from 'canisters/playground';

    // Hour to minutes vars
    var xHo: number = 0;
    var rHo: string = '';
    var progressHo = false;

    const hoursToMinutes = async () => {
        progressHo = true;
        const res = await playground.hours_to_minutes(xHo);
        var r = res.toString();
        rHo = r;
        progressHo = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xHo}
/>
<p class="text-sm text-primary">Result : {rHo}</p>
{#if progressHo == false}
    <button class="btn btn-outline btn-primary mt-4" on:click={hoursToMinutes}>
        get minutes
    </button>
{:else}
    <button
        class="btn btn-outline btn-primary mt-4"
        on:click={hoursToMinutes}
        disabled
    >
        get minutes
    </button>
{/if}
