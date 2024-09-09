<script setup>
import { themeColor, siteName } from "../data/items";
</script>
<template>
  <nav class="site-nav dark js-site-navbar mb-5 site-navbar-target cursor-pointer">
    <div class="container">
      <div class="site-navigation">
        <NuxtLink to="/" class="logo m-0 float-left">
          <img src="../assets/images/logo.png" alt="logo" class="logo-img" />
        </NuxtLink>
        <ul class="js-clone-nav d-none d-lg-inline-block site-menu float-left">
          <li class="active">
            <a href="#home-section" class="nav-link">Курсы</a>
          </li>
<!--          <li class="has-children">-->
<!--            <a href="#" class="nav-link">Dropdown</a>-->
<!--            <ul class="dropdown">-->
<!--              <li>-->
<!--                <a href="#testimonials-section" class="nav-link"-->
<!--                  >Testimonials</a-->
<!--                >-->
<!--              </li>-->
<!--              <li><a href="#" class="nav-link">Menu Two</a></li>-->
<!--              <li><a href="#" class="nav-link">Menu Three</a></li>-->
<!--            </ul>-->
<!--          </li>-->
          <li class="active">
            <a href="#home-section" class="nav-link">Коворкинг</a>
          </li>
          <li><a href="#features-section" class="nav-link">Контакты</a></li>
          <li><a href="#pricing-section" class="nav-link">Локация</a></li>
        </ul>
        <ul
          class="js-clone-nav d-none mt-1 d-lg-inline-block site-menu float-right"
        >
          <li class="cta-button-outline" style="margin-right: 5px;"><a href="#">Sign in</a></li>
          <li class="cta-primary">
            <a href="#" :style="[{ backgroundColor: themeColor }]">Register</a>
          </li>
        </ul>
        <a
          href="#"
          class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block dark d-lg-none"
          data-toggle="collapse"
          data-target="#main-navbar"
        >
          <span></span>
        </a>
      </div>
    </div>
  </nav>
</template>
