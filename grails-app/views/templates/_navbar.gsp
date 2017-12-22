<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">

    <a class="navbar-brand" href="#">Dashboard</a>

    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarResponsive">

        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                <g:link class="nav-link" controller="user" action="dash">
                    <span class="nav-link-text">Dashboard</span>
                </g:link>
            </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Home Dashboard">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseHome"
                   data-parent="#exampleAccordion">
                    <span class="nav-link-text">Home</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseHome">
                    <li>
                        <g:link controller="home" action="addPage">Add</g:link>
                    </li>
                    <li>
                        <g:link controller="home" action="viewPage">View</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="serviceDash">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseService"
                   data-parent="#exampleAccordion">
                    <span class="nav-link-text">Services</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseService">
                    <li>
                        <g:link controller="service" action="viewAddPage">Add</g:link>
                    </li>
                    <li>
                        <g:link controller="service" action="dashViewPage">View</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="blogDash">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseBlog"
                   data-parent="#exampleAccordion">
                    <span class="nav-link-text">Blog</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseBlog">
                    <li>
                        <g:link controller="blog" action="addBlog">Add</g:link>
                    </li>
                    <li>
                        <g:link controller="blog" action="viewBlogDash">View</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="aboutDash">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseAbout"
                   data-parent="#exampleAccordion">
                    <span class="nav-link-text">About</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseAbout">
                    <li>
                        <g:link controller="about" action="addPage">Add</g:link>
                    </li>
                    <li>
                        <g:link controller="about" action="viewPage">View</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="petsDash">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapsePets"
                   data-parent="#exampleAccordion">
                    <span class="nav-link-text">Pets</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapsePets">
                    <li>
                        <g:link controller="pets" action="addPets">Add</g:link>
                    </li>
                    <li>
                        <g:link controller="pets" action="viewPetsDash">View</g:link>
                    </li>
                </ul>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#logoutModal">
                    <i class="fa fa-fw fa-sign-out"></i>Logout</a>
            </li>
        </ul>
    </div>
</nav>

