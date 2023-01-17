<script lang="ts">
    import { playground } from 'canisters/playground';

    // Volume vars
    var xVo: number = 0;
    var rVo: string = '';
    var progressVo = false;

    const volume = async () => {
        progressVo = true;
        const res = await playground.volume(xVo);
        var r = res.toString();
        rVo = r;
        progressVo = false;
    };
</script>

<input
    type="number"
    placeholder="X value"
    class="input input-bordered w-40 my-2"
    bind:value={xVo}
/>
<p class="text-sm text-primary">Result : {rVo}</p>
{#if progressVo == false}
    <button class="btn btn-outline btn-primary mt-4" on:click={volume}>
        get volume
    </button>
{:else}
    <button class="btn btn-outline btn-primary mt-4" on:click={volume} disabled>
        get volume
    </button>
{/if}
