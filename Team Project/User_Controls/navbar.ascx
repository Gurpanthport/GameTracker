<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navbar.ascx.cs" Inherits="Team_Project.User_Controls.navbar" %>
<nav class="navbar navbar" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Default.aspx"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <li id="home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li id="about" runat="server"><a href="games.aspx"><i class="fa fa-user fa-lg"></i> Games</a></li>
                <li id="projects" runat="server"><a href="Projects.aspx"><i class="fa fa-rocket fa-lg"></i> Score Board</a></li>
                <li id="services" runat="server"><a href="registration.aspx"><i class="fa fa-user fa-lg"></i> Register</a></li>
                <li id="contact" runat="server"><a href="Contacts.aspx"><i class="fa fa-phone fa-lg"></i> Contact Us</a></li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>