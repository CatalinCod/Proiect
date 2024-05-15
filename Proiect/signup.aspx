<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Proiect.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px"  src="Images/images.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Sign UP</h3>
                                </center>
    </div>
</div>
<div class="row">
    <div class="col">
        <hr>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <label>Nume intreg</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nume Intreg"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Anul Nasterii</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  TextMode="Date"></asp:TextBox>
        </div>
    </div>
</div>


                        <div class="row">
    <div class="col-md-6">
        <label>Numar telefon</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Email</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
        </div>
    </div>
</div>

                        <div class="row">
                            <center>
                            <div class="col">
                                <span class="badge text-bg-success">Info Logare</span>

                            </div>
                                </center>

                        </div>

  <div class="row">
    <div class="col-md-6">
        <label>User ID</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Parola</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox>
        </div>
    </div>
</div>
<div class="row">
    <div class="col">
        <div class="form-group" style="margin-top: 20px;"> <!-- Added margin to the top of the form-group -->
            <center>
                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" Height="34px" OnClick="Button1_Click" Width="95px" />
            </center>
        </div>
    </div>
</div>
                           <a href="homepage.aspx"><< Acasa</a><br>
   <br>

</asp:Content>                    