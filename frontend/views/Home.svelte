<script lang="ts">
    // import logo from "./assets/logo-light.svg"
    // import { onMount } from "svelte"
    // import { counter } from "canisters/counter"

    // let count: number = 0
    // let progress = false

    // const refreshCounter = async () => {
    //   const res: any = await counter.getValue()
    //   count = res.toString()
    // }

    // const increment = async () => {
    //   progress = true
    //   await counter.increment()
    //   refreshCounter()
    //   progress = false
    // }

    // onMount(refreshCounter)
    let tuts = [
        { id: 1, title: 'Greeting', route: '#/greeting' },
        { id: 2, title: 'Counter', route: '#/counter' },
    ];
    // window.location.reload();
</script>

<div>
    <!-- <p class="text-4xl font-bold mt-20">Byte Matter</p> -->
    <!-- <p class="text-xl font-bold mt-8 mb-4">
        Blockchain software engineer at <a
            class="text-xl hover:text-violet-500"
            href="https://www.origyn.com/"
            target="_blank">Origyn Foundation</a
        >. Based in Houston, TX
    </p> -->
    <div class="mt-8 mb-10">
        <!-- <a class="text-xl font-bold link link-hover" href="#/about">About</a>
        <a
            class="text-xl font-bold mx-2 ext-xl link link-hover"
            href="https://github.com/ferMartz"
            target="_blank">Github</a
        > -->
    </div>

    <p class="text-3xl my-6">Basics</p>
    <div class="my-12 grid grid-cols-3 gap-4">
        {#each tuts as tut, i}
            <a class="text-2xl link link-hover" href={tut.route}>{tut.title}</a>
        {/each}
    </div>

    <!-- <div class="my-8 grid grid-cols-2 gap-4">
      <div>
        <div class="mockup-code">
          <pre data-prefix="$"><code>dfx start --clean</code></pre>
          <pre data-prefix="$"><code>dfx deploy</code></pre>
        </div>
      </div>
      <div>
        
      </div>
    </div> -->
</div>
