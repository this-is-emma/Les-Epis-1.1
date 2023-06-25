document.addEventListener('DOMContentLoaded', function() {
    const elements = document.getElementsByClassName('hamburger-menu');
    const element = elements[0]
    const hamburgerIcon = document.getElementById('toggle-mobile-menu');
    const navBarLinks = document.getElementById('nav-bar-links')
    let isNavBarCollapsed = true;
    console.log("Is Navbar collapsed???",isNavBarCollapsed)

    //Change hamburger icon to X and vice-versa
    element.addEventListener('click', function() {
      isNavBarCollapsed ? openMenu() : collapseMenu()
    });

    function collapseMenu(){
        // hide links
        navBarLinks.className=('nav-bar-links-collapsed');

        //Menu should be swicth to bars
        hamburgerIcon.className=('fa-solid fa-bars fa-lg')
        hamburgerIcon.style.color="black"
        //set bool isNavBarCollapsed to TRUE
        isNavBarCollapsed = true
        console.log("Is Navbar collapsed???",isNavBarCollapsed)

    }

    function openMenu(){
        //show links
        navBarLinks.className=('nav-bar-links')
        //Menu icon should be switched to X!
        hamburgerIcon.className=('fa-solid fa-x fa-lg')
        hamburgerIcon.style.color="rgb(209,133,0)"
        //set bool isNavBarCollapsed to FALSE
        isNavBarCollapsed = false
        console.log("Is Navbar collapsed???",isNavBarCollapsed)

    }

});
