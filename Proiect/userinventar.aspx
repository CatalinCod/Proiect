<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userinventar.aspx.cs" Inherits="Proiect.userinventar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
  </script>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        <h3>
                        Animalele Noastre</h3>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [inventar_tb]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
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
                <center>
                    <a href="homepage.aspx">
                        << Acasa</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>
</asp:Content>
