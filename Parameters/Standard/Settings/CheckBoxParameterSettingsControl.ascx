<%@ Control Language="C#" Inherits="DNNStuff.SQLViewPro.StandardParameters.CheckBoxParameterSettingsControl" CodeBehind="CheckBoxParameterSettingsControl.ascx.cs" AutoEventWireup="true" Explicit="True" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm" id="panels-settings">
    <div class="dnnFormExpandContent">
        <a href="">Expand All</a></div>
    <h2 id="Common" class="dnnFormSectionHead">
        <a href="#">
            <%=Localization.GetString("lblCommonHeader", LocalResourceFile)%></a></h2>
    <fieldset class="dnnClear">
        <div class="dnnFormItem">
            <dnn:Label ID="lblDefault" runat="server" ControlName="chkDefault" Suffix=":"></dnn:Label>
            <asp:CheckBox ID="chkDefault" runat="server" CssClass="NormalTextBox"></asp:CheckBox>
        </div>
    </fieldset>
</div>
<script type="text/javascript">
	jQuery(function ($) {
			var setupModule = function () {
				$('#panels-settings').dnnPanels();
				$('#panels-settings .dnnFormExpandContent a').dnnExpandAll({
					targetArea: '#panels-settings'
				});
			};
			setupModule();
			Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
				// note that this will fire when _any_ UpdatePanel is triggered,
				// which may or may not cause an issue
				setupModule();
			});
	});
</script>

