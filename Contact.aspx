<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="School_Tickets.Contact" %>

<asp:Content ID="CssContent" ContentPlaceHolderID="CssContent" runat="server">
    <link rel="stylesheet" href="/cssContact/style.css">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					
				</div>
			</div>
			<div class="row justify-content-center" align="center">
				<div class="col-md-12" align="center">
					<div class="wrapper">
						<div class="row no-gutters mb-5">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Contacteaza-ne</h3>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            <asp:Literal runat="server" ID="FailureText" />
				      		</div>
									
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Nume</label>
													
												<asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                                            CssClass="text-danger" ErrorMessage="Numele este obligatoriu." />
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="email">Email</label>
												
												<asp:TextBox runat="server" ID="Email" CssClass="form-control" placeholder="example@yourmail.com" TextMode="Email" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                            CssClass="text-danger" ErrorMessage="Emailul este obligatoriu." />
												
												</div>
											</div>
									
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Mesaj</label>
													<textarea runat="server" name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Mesaj"></textarea>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">

													 <asp:Button runat="server" OnClick="SendMessage_Click" Text="Trimite mesaj" CssClass="btn btn-primary" />
												</div>
											</div>
										</div>
									
								</div>
							</div>
							<div class="col-md-5 d-flex align-items-stretch">
								<div id="map">
			          </div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-map-marker"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Addresa</span> Timisoara</p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-phone"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Telefon:</span> <a href="tel://07xxx">+40 7xxx</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-paper-plane"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-globe"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Website</span> <a href="#">https://schooltickets.azurewebsites.net/</a></p>
				          </div>
			          </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
