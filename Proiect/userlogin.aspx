<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Proiect.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
   <div class="row">
      <div class="col-md-6 mx-auto">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <img width="150px" src="Images/admin.jpg" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <h3>Logare</h3>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <label>ID</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                     </div>
                     <label>Parola</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox>
                     </div>
     <div class="row" style="margin-top: 20px;"> 
    <div class="col text-center">
        <div class="form-group d-inline-block mx-2">
            <asp:Button class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>
       
    </div>
</div>

    </div>
</div>


                  </div>
                   
               </div>
            </div>
         </div>
           <a href="homepage.aspx"><< Acasa</a><br>
   <br>
      </div>
   </div>
</div>
</asp:Content>
