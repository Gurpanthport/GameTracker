<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Team_Project.Registration" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-3"><i class="fa fa-user" aria-hidden="true"></i>
Registration</h1>
    <p class="lead">Register to view the latest game updates</p>
 <form>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 form-control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
      <label for="inputEmail3" class="col-sm-2 form-control-label">Password</label>
        <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Password">
    </div>
  </div>
  <div class="form-group row">
       <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-secondary">Sign In</button>
           <button type="submit" class="btn btn-secondary">Sign Up</button>
    </div>
   
  </div>
  </div>
</div>
           </div>
</asp:Content>
