<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="inventar.aspx.cs" Inherits="Proiect.inventar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);

                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Detalii</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                       
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>ID</label>
                         <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" ID"></asp:TextBox>
                            
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                     
                        <label>Rasa</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Necunoscut" Value="Necunoscut" />
                              <asp:ListItem Text="Doberman" Value="Doberman" />
                              <asp:ListItem Text="Siameza" Value="Siameza" />
                              <asp:ListItem Text="Ciobanesc" Value="Ciobanesc" />
                              <asp:ListItem Text="Sfinx" Value="Sfinx" />
                           
                           </asp:DropDownList>
                        </div>
                       
                      
                        <label>Data inscrierii</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Tip</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Pisica" Value="Pisica" />
                              <asp:ListItem Text="Caine" Value="Caine" />
                              <asp:ListItem Text="Iepuras" Value="Iepuras" />
                              <asp:ListItem Text="Hamster" Value="Hamster" />
               
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                       
                       
                      
                        <label>Descrierea Animalului</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Descriere" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Adauga" OnClick="Button1_Click" />
                    </div>
                  <!--   <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Sterge" OnClick="Button2_Click" />
                     </div> -->
                  </div>
               </div>  
            </div>
            <a href="homepage.aspx"> Acasa</a><br>
             <a href="adminlogin.aspx.designer.cs"></a>   
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Animalele noastre</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=CATBOOK\SQLEXPRESS;Initial Catalog=elibraryDB;Integrated Security=True;TrustServerCertificate=True" ProviderName="System.Data.SqlClient"
                          SelectCommand="SELECT * FROM [inventar_tb]"></asp:SqlDataSource>
                     <div class="col">
                      <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                              
                           <asp:TemplateField>
                                 <ItemTemplate>
                                    <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-12">
                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("Rasa") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Data cand a venit la noi: - </span>
                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Data_inscrierii") %>'></asp:Label>
                                                   &nbsp;|
                                                   
                                                  
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   
                                                   
                                                   &nbsp;| Tipul Animalului -
                                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Tip") %>'></asp:Label>
                                                   &nbsp;| 
                                                  
                                                </div>
                                             </div>
                              
                                             <div class="row">
                                                <div class="col-12">
                                                  Descrierea -
                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("Descriere") %>'></asp:Label>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-2">
                                             <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("Imagine") %>' />
                                          </div>
                                       </div>
                                    </div>
                                 </ItemTemplate>
                              </asp:TemplateField>
                              
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>