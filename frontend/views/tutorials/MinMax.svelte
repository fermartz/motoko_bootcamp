<script lang="ts">
    import { playground } from 'canisters/playground';

    let progress: boolean = false;
    var x: number = 0;
    var y: number = 0;
    var result: string = '';

    const getMinValue = async () => {
        result = '';
        progress = true;
        const res: any = await playground.get_min_value(x, y);
        var r = res.toString();
        result = `${r} is the minimum value`;
        progress = false;
    };

    const getMaxValue = async () => {
        result = '';
        progress = true;
        const res: any = await playground.get_max_value(x, y);
        var r = res.toString();
        result = `${r} is the maximum value`;
        progress = false;
    };
</script>

<div class="flex flex-col justify-center items-center">
    <p class="text-4xl font-bold mt-20 mb-8">Min - Max Functions</p>

    <p class="text-l my-2">Enter two values to compare</p>
    <p class="text-l my-2">{result}</p>
    <input
        type="number"
        placeholder="X value"
        class="input input-bordered w-40 my-2"
        bind:value={x}
    />
    <input
        type="number"
        placeholder="Y value"
        class="input input-bordered w-40 my-2"
        bind:value={y}
    />
    {#if progress === false}
        <div>
            <button
                class="btn btn-outline btn-primary mt-8 "
                on:click={getMinValue}
            >
                get min value
            </button>
            <button
                class="btn btn-outline btn-primary mt-8 ml-6"
                on:click={getMaxValue}
            >
                get max value
            </button>
        </div>
    {:else}
        <div>
            <button class="btn btn-outline btn-primary mt-8 " disabled>
                get min value
            </button>
            <button class="btn btn-outline btn-primary mt-8 ml-6" disabled>
                get max value
            </button>
        </div>
    {/if}
    <a
        class="font-bold  hover:text-[#3abff8] mt-6"
        href="https://gist.github.com/fermartz/2e92a85988ebcf297e01c94c5d02afd8"
        target="_blank"
        rel="noopener noreferrer">SEE CODE</a
    >
</div>
