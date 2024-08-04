<script setup>
const links = [
  { title: "Курсы", route: "/courses" },
  { title: "Коворкинг", route: "/co-working" },
  { title: "Контакты", route: "/contacts" },
  { title: "Локация", route: "/location" },
];

const isScrolled = ref(false);

const handleScroll = () => {
  isScrolled.value = window.scrollY > 50;
};

onMounted(() => {
  window.addEventListener('scroll', handleScroll);
});

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll);
});
</script>

<template>
  <nav :class="['header__nav', { scroled: isScrolled } ]">
    <div class="header__nav-content container">
      <div class="header__nav-menu">
        <img src="/assets/images/header/menu.png" alt="" />
      </div>
      <NuxtLink to="/" class="header__nav-logo">
        <img src="/assets/images/header/logo.png" alt="Logo" />
      </NuxtLink>
      <ul class="header__nav-list">
        <li class="header__nav-item" v-for="link of links" :key="link.route">
          <NuxtLink class="header__nav-link" :to="link.route">
            {{ link.title }}
          </NuxtLink>
        </li>
      </ul>
      <div class="header__nav-lang">
        <img src="/assets/images/header/rus.png" alt="" />
      </div>
    </div>
  </nav>
</template>