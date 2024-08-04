<script setup>
const courses = [
    { title: "Веб Программирование", img: '/_nuxt//assets/images/courseCard/web.png', route: "web" },
    { title: "Дропшиппинг", img: '/_nuxt//assets/images/courseCard/drop.png',  route: "dropshipping" },
    { title: "Интернет Маркетинг", img: '/_nuxt//assets/images/courseCard/smm.png', route: "smm" },
    { title: "Scratch", img: '/_nuxt//assets/images/courseCard/scratch.png', route: "scratch" },
    { title: "Full Дизайн", img: '/_nuxt//assets/images/courseCard/design.png', route: "design" },
    { title: "3Ds Max", img: '/_nuxt//assets/images/courseCard/3d.png', route: "auto-cad"}
]
</script>

<template>
    <section class="cards">
        <NuxtLink :to="course.route" class="cards__item" v-for="course in courses" :key="course.img">
            <div class="cards__item-content">
                <img :src="course.img" alt="" class="cards__item-img">
                <h2 class="cards__item-title"> {{ course.title }} </h2>
            </div>
        </NuxtLink>
    </section>
</template>