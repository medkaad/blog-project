<template>
  <div>
    <nav>
      <router-link to="/">Posts</router-link> |
      <router-link to="/login">Login</router-link> |
      <router-link to="/register">Register</router-link>
    </nav>
    <router-view></router-view>
  </div>
</template>

<script>
export default {};
</script>
