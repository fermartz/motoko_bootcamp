<script lang="ts">
    let tuts = [
        { id: 1, title: 'Greeting', route: '#/greeting' },
        { id: 2, title: 'Counter', route: '#/counter' },
        { id: 2, title: 'Min Max Functions', route: '#/min-max' },
        { id: 2, title: 'Day One Challenge', route: '#/challenge-one' },
    ];
</script>

<div>
    <p class="text-xl font-bold mt-8">
        <a
            class="text-2xl hover:text-[#3abff8]"
            href="https://internetcomputer.org/"
            target="_blank"
            rel="noopener noreferrer">Internet Computer DApp</a
        > built to document Motoko Bootcamp
    </p>
    <div class="mt-8">
        <a class="text-xl font-bold  hover:text-[#3abff8]" href="#/resources"
            >Resources</a
        >
    </div>

    <div class="flex flex-col justify-center items-center">
        <p class="text-3xl mt-36 mb-6">Basics</p>
        <div
            class="my-12 grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"
        >
            {#each tuts as tut}
                <a class="text-xl link no-underline" href={tut.route}>
                    <div
                        class="card w-96 bg-neutral text-neutral-content hover:text-slate-900 hover:bg-primary"
                    >
                        <div class="card-body items-center text-center">
                            <h2 class="card-title ">
                                {tut.title}
                            </h2>

                            <div class="card-actions justify-center">
                                <!-- <button class="btn btn-primary">Accept</button>
                    <button class="btn btn-ghost">Deny</button> -->
                            </div>
                        </div>
                    </div>
                </a>
            {/each}
        </div>
    </div>
</div>
