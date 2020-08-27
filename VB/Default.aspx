<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>


<%@ Register Assembly="DevExpress.Xpo.v17.1, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<%@ Register Assembly="DevExpress.XtraCharts.v17.1.Web, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v17.1, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxGridView - How to make WebChartControl display only data that is visible in the grid without refreshing the whole page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
                            Height="261px" Width="1016px">
                            <SeriesSerializable>
                                <cc1:Series Name="Series 1"
                                    ArgumentDataMember="ProductName" ValueDataMembersSerializable="UnitPrice">
                                    <ViewSerializable>
                                        <cc1:LineSeriesView HiddenSerializableString="to be serialized"></cc1:LineSeriesView>
                                    </ViewSerializable>
                                    <LabelSerializable>
                                        <cc1:PointSeriesLabel HiddenSerializableString="to be serialized" LineVisible="True">
                                        </cc1:PointSeriesLabel>
                                    </LabelSerializable>
                                    <PointOptionsSerializable>
                                        <cc1:PointOptions HiddenSerializableString="to be serialized"></cc1:PointOptions>
                                    </PointOptionsSerializable>
                                    <LegendPointOptionsSerializable>
                                        <cc1:PointOptions HiddenSerializableString="to be serialized"></cc1:PointOptions>
                                    </LegendPointOptionsSerializable>
                                </cc1:Series>
                            </SeriesSerializable>
                            <SeriesTemplate>
                                <PointOptionsSerializable>
                                    <cc1:PointOptions HiddenSerializableString="to be serialized">
                                    </cc1:PointOptions>
                                </PointOptionsSerializable>
                                <LabelSerializable>
                                    <cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized" LineVisible="True">
                                    </cc1:SideBySideBarSeriesLabel>
                                </LabelSerializable>
                                <LegendPointOptionsSerializable>
                                    <cc1:PointOptions HiddenSerializableString="to be serialized">
                                    </cc1:PointOptions>
                                </LegendPointOptionsSerializable>
                                <ViewSerializable>
                                    <cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
                                    </cc1:SideBySideBarSeriesView>
                                </ViewSerializable>
                            </SeriesTemplate>
                            <DiagramSerializable>
                                <cc1:XYDiagram>
                                    <AxisX VisibleInPanesSerializable="-1">
                                        <Label Angle="45"></Label>
                                        <Range SideMarginsEnabled="True"></Range>
                                    </AxisX>
                                    <AxisY VisibleInPanesSerializable="-1">
                                        <Range SideMarginsEnabled="True"></Range>
                                    </AxisY>
                                </cc1:XYDiagram>
                            </DiagramSerializable>
                            <FillStyle>
                                <OptionsSerializable>
                                    <cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
                                </OptionsSerializable>
                            </FillStyle>
                        </dxchartsui:WebChartControl>
                        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="1015px" AutoGenerateColumns="False" DataSourceID="XpoDataSource1"
                            ClientInstanceName="gridView" KeyFieldName="ProductID" EnableCallBacks="false">
                            <Settings ShowGroupPanel="true" ShowFilterRow="true" />
                            <Columns>
                                <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowClearFilterButton="true">
                                </dxwgv:GridViewCommandColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="1">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" Visible="False">
                                </dxwgv:GridViewDataCheckColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="EAN13" Visible="False">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="2">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" Visible="False">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="4">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="5">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
                                </dxwgv:GridViewDataTextColumn>
                                <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
                                </dxwgv:GridViewDataTextColumn>
                            </Columns>
                            <SettingsPager PageSize="15">
                            </SettingsPager>
                        </dxwgv:ASPxGridView>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
        </div>
        <dxxpo:XpoDataSource ID="XpoDataSource1" runat="server" ServerMode="True" TypeName="nwind.Products">
        </dxxpo:XpoDataSource>
    </form>
</body>
</html>