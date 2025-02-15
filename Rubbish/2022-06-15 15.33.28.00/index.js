$(document).ready(function () {
  // Activating Loading screen on every page load
  // loadLoader();
  // console.log("Window Loaded Succesfully");

  // Mobile Responsive Button
  const sidemenu = document.querySelector("aside");
  const menuBtn = document.querySelector("#menu-btn");
  const closeBtn = document.querySelector("#close-btn");
  menuBtn.addEventListener("click", () => {
    sidemenu.style.display = "block";
  });

  closeBtn.addEventListener("click", () => {
    sidemenu.style.display = "none";
  });

  // setting Active class on sidebar
  current_link = window.location.href;
  // console.log(current_link);
  if (current_link === "http://localhost/vfa/App/home/") {
    $("#home").addClass("active");
  }
  if (current_link === "http://localhost/vfa/App/weather/") {
    $("#weather").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/account/") {
    $("#account").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/feeds/") {
    $("#feeds").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/krishi-book/") {
    $("#krishi-books").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/settings/") {
    $("#settings").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/faq/") {
    $("#faq").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/terms/") {
    $("#terms").addClass("active");
  }
  if (current_link == "http://localhost/vfa/App/policy/") {
    $("#policy").addClass("active");
  }

  // Toggeling Select New Crop Section
  $("#add-new-farm-data").click(() => {
    console.log("You clicked add-new-crop section");
    $(".select-crop-section").toggle();
  });

  $(".crop-item").click(() => {
    console.log("you clicked crop-item");
    $(".date-of-sowing").toggle();
  });

  // Load Loader Function
  function loadLoader() {
    $(".loader-container").addClass("loadShow");
    setTimeout(function () {
      $(".loader-container").addClass("done loadHide");
      $(".lprogress").addClass("done");
      $(".loader-container").removeClass("loadShow");
    }, 2000);
  }

  // Scroll Reviel JS
  ScrollReveal().reveal(".card");

  // Lazy Load All Images 
  const observer = lozad(); // lazy loads elements with default selector as '.lozad'
  observer.observe();
});
