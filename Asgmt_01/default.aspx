<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Asgmt_01._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- all visible content goes here -->    
    <div class="container">
        <div class="row">
            <h1>Game Calculator</h1>
            <p>All fields are required. No ties or draws are allowed.</p>
            <!-- ******* GAME 1 ******** -->
            <div class="col-sm-3 col-md-3">
                <div class="well">
                    <h2>Game 1</h2>
                    <!-- Button List -->
                    <div class="form-horizontal">
                     <div class="form-group">
			            <label for="rblResult1" class="col-sm-4 control-label">Result:</label>
			            <asp:RadioButtonList id="rblResult1" runat="server" CssClass="radio-inline">
				            <asp:ListItem Value="1">Wins </asp:ListItem>
				            <asp:ListItem Value="0">Loos</asp:ListItem>
			             </asp:RadioButtonList>                         
                     </div>
                         
                          <div class="form-group">
                            <label for="txtScored1" class="control-label col-sm-4">Scored:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtScored1" runat="server" type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtScored1" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Score must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtScored1" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div><!-- /.Scored1 Field -->

                          <div class="form-group">
                            <label for="txtAgainst1" class="control-label col-sm-4">Against:</label>
                              <div class="col-sm-8">
                            <asp:TextBox ID="txtAgainst1" runat="server" Type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtAgainst1" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Against must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtAgainst1" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                </div>
                            </div><!-- /.Allowed1 Field -->

                        <div class="form-group">
                            <label for="txtSpectators1" class="control-label col-sm-4">Spectators:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators1" runat="server" Type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtSpectators1" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Spectator must be 0 or higher"
                                 CssClass="alert-danger" ControlToValidate="txtSpectators1" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                            </div><!-- /.Spectators1 Field --> 
                        <!-- Validations for Game 1 -->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                             ErrorMessage="Result must be selected" ControlToValidate="rblResult1" CssClass="alert-danger" Display="Dynamic">
                         </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="txtScored1" controltocompare="txtAgainst1" 
                              Operator="NotEqual" type="Integer" errormessage="For and Against must be different" Display="Dynamic" CssClass="alert-danger" />                         
                        </div><!-- /.form-horizontal -->                
                    </div><!-- /.well-->
                </div><!-- /.col-sm-3 col-md-3 -->

            <!-- ******* GAME 2 ******** -->    
            <div class="col-sm-3 col-md-3">
                <div class="well">
                    <h2>Game 2</h2>
                    <div class="form-horizontal">
                     <div class="form-group">
			            <label for="rblResult2" class="col-sm-4 control-label">Result:</label>
			            <asp:RadioButtonList id="rblResult2" runat="server" CssClass="radio-inline">
				            <asp:ListItem Value="1">Wins </asp:ListItem>
				            <asp:ListItem Value="0">Loos</asp:ListItem>
			             </asp:RadioButtonList>                       
                     </div>
                         
                          <div class="form-group">
                            <label for="txtScored2" class="control-label col-sm-4">Scored:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtScored2" runat="server" type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtScored2" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Score must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtScored2" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div><!-- /.Scored2 Field -->

                          <div class="form-group">
                            <label for="txtAgainst2" class="control-label col-sm-4">Against:</label>
                              <div class="col-sm-8">
                            <asp:TextBox ID="txtAgainst2" runat="server" Type="Number" CssClass="form-control"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtAgainst2" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Against must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtAgainst2" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                </div>
                            </div><!-- /.Allowed2 Field -->

                        <div class="form-group">
                            <label for="txtSpectators2" class="control-label col-sm-4">Spectators:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators2" runat="server" Type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtSpectators2" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="Spectator must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtSpectators2" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                            </div><!-- /.Spectators2 Field -->  
                        <!-- Validations for game 2 -->
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ErrorMessage="Result must be selected" ControlToValidate="rblResult2" CssClass="alert-danger" Display="Dynamic">
                         </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" id="CompareValidator1" controltovalidate="txtScored2" controltocompare="txtAgainst2" 
                              Operator="NotEqual" type="Integer" errormessage="For and Against must be different" Display="Dynamic" CssClass="alert-danger" />
                        </div><!-- /.form-horizontal -->                
                    </div><!-- /.well-->
                </div><!-- /.col-sm-3 col-md-3 -->  

            <!-- ******* GAME 3 ******** -->
            <div class="col-sm-3 col-md-3">
                <div class="well">
                    <h2>Game 3</h2>
                    <div class="form-horizontal">
                     <div class="form-group">
			            <label for="rblResult3" class="col-sm-4 control-label">Result:</label>
			            <asp:RadioButtonList id="rblResult3" runat="server" CssClass="radio-inline">
				            <asp:ListItem Value="1">Wins </asp:ListItem>
				            <asp:ListItem Value="0">Loos</asp:ListItem>
			             </asp:RadioButtonList>                         
                     </div>
                         
                          <div class="form-group">
                            <label for="txtScored3" class="control-label col-sm-4">Scored:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtScored3" runat="server" type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtScored3" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="Score must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtScored3" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div><!-- /.Scored3 Field -->

                          <div class="form-group">
                            <label for="txtAgainst3" class="control-label col-sm-4">Against:</label>
                              <div class="col-sm-8">
                            <asp:TextBox ID="txtAgainst3" runat="server" Type="Number" CssClass="form-control"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtAgainst3" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="Against must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtAgainst3" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                </div>
                            </div><!-- /.Allowed3 Field -->

                        <div class="form-group">
                            <label for="txtSpectators3" class="control-label col-sm-4">Spectators:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators3" runat="server" Type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtSpectators3" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="Spectator must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtSpectators3" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                            </div><!-- /.Spectators3 Field -->  
                        <!-- Validations for game 3-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                             ErrorMessage="Result must be selected" ControlToValidate="rblResult3" CssClass="alert-danger" Display="Dynamic">
                         </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" id="CompareValidator2" controltovalidate="txtScored3" controltocompare="txtAgainst3" 
                              Operator="NotEqual" type="Integer" errormessage="For and Against must be different" Display="Dynamic" CssClass="alert-danger" />
                        </div><!-- /.form-horizontal -->                
                    </div><!-- /.well-->
                </div><!-- /.col-sm-3 col-md-3 --> 
            
           <!-- ******* GAME 4 ******** -->
             <div class="col-sm-3 col-md-3">
                <div class="well">
                    <h2>Game 4</h2>
                    <div class="form-horizontal">
                     <div class="form-group">
			            <label for="rblResult4" class="col-sm-4 control-label">Result:</label>
			            <asp:RadioButtonList id="rblResult4" runat="server" CssClass="radio-inline">
				           <asp:ListItem Value="1">Wins </asp:ListItem>
				            <asp:ListItem Value="0">Loos</asp:ListItem>
			             </asp:RadioButtonList>
                     </div>
                         
                          <div class="form-group">
                            <label for="txtScored4" class="control-label col-sm-4">Scored:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtScored4" runat="server" type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtScored4" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator10" runat="server" ErrorMessage="Score must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtScored4" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div><!-- /.Scored3 Field -->

                          <div class="form-group">
                            <label for="txtAgainst4" class="control-label col-sm-4">Against:</label>
                              <div class="col-sm-8">
                            <asp:TextBox ID="txtAgainst4" runat="server" Type="Number" CssClass="form-control"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtAgainst4" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="Against must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtAgainst4" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                </div>
                            </div><!-- /.Allowed3 Field -->

                        <div class="form-group">
                            <label for="txtSpectators4" class="control-label col-sm-4">Spectators:</label>
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators4" runat="server" Type="Number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" 
                                runat="server" ErrorMessage="Required" ControlToValidate="txtSpectators4" 
                                CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="Spectator must be 0 or higher" CssClass="alert-danger" 
                                ControlToValidate="txtSpectators4" 
                                MinimumValue="0" MaximumValue="99999" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                            </div><!-- /.Spectators4 Field --> 
                        <!-- Validations for game 4 --> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                             ErrorMessage="Result must be selected" ControlToValidate="rblResult4" CssClass="alert-danger" Display="Dynamic">
                         </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" id="CompareValidator3" controltovalidate="txtScored4" controltocompare="txtAgainst4" 
                              Operator="NotEqual" type="Integer" errormessage="For and Against must be different" Display="Dynamic" CssClass="alert-danger" />
                        </div><!-- /.form-horizontal -->                
                    </div><!-- /.well-->
                </div><!-- /.col-sm-3 col-md-3 --> 
            </div><!-- /.row-->
        
                        <div class="text-center">
                            <asp:Button ID="Button1" runat="server" Text="Calculate Total"
                            cssclass="btn btn-success col-sm-offset-2" OnClick="btnCalculate_Click" />
                            </div>
                         <!-- ************************** 
                            Display the form values 
                            ************************** -->
                       <div class="well" Visible="false" id="showResult" runat="server">
                           <h2>Results</h2>
                        <div>
                            <asp:Label ID="lblWon" runat="server" />
                        </div>
                           <div>
                            <asp:Label ID="lblLost" runat="server" />
                        </div>                       
                         <div>
                            <asp:Label ID="lblWinPct" runat="server" />
                        </div>
                           <div>
                            <asp:Label ID="lblTotalScored" runat="server" />
                        </div>
                        <div>
                            <asp:Label ID="lblTotalAgainst" runat="server" />
                        </div>
                         <div>
                            <asp:Label ID="lblPointDiff" runat="server" />
                        </div>
                          <div>
                            <asp:Label ID="lblTotalSpectators" runat="server" />
                        </div>
                         <div>
                            <asp:Label ID="lblAvgAttendance" runat="server" />
                        </div>
                      </div><!-- /.well -->
        </div><!-- /.container-fluid-->
</asp:Content>
