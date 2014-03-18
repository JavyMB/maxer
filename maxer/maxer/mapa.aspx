<%@ Page Title="" Language="C#" MasterPageFile="~/GUI.Master" AutoEventWireup="true" CodeFile="mapa.aspx.cs" Inherits="mapa" %>

<%@ Register Src="~/GoogleMapForASPNet.ascx" TagPrefix="uc1" TagName="GoogleMapForASPNet" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="panelIzquierdo">
        <div id="Unidades">
            <asp:DropDownList ID="DropDownListUnidades" runat="server"></asp:DropDownList>
        </div>
        <div id="Reporte">
            <asp:GridView ID="GridViewReporte" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceReporte">
                <Columns>
                    <asp:BoundField DataField="unidad" HeaderText="unidad" SortExpression="unidad" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" Visible="False" />
                    <asp:BoundField DataField="Contadormsj" HeaderText="Contadormsj" SortExpression="Contadormsj" Visible="False" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                    <asp:BoundField DataField="velocidad" HeaderText="velocidad" SortExpression="velocidad" />
                    <asp:BoundField DataField="Latitud" HeaderText="Latitud" SortExpression="Latitud" Visible="False" />
                    <asp:BoundField DataField="Longitud" HeaderText="Longitud" SortExpression="Longitud" Visible="False" />
                    <asp:BoundField DataField="Distancia" HeaderText="Distancia" SortExpression="Distancia" Visible="False" />
                    <asp:BoundField DataField="Poblacion" HeaderText="Poblacion" SortExpression="Poblacion" Visible="False" />
                    <asp:BoundField DataField="Mensaje" HeaderText="Mensaje" SortExpression="Mensaje" Visible="False" />
                    <asp:BoundField DataField="TiempoenSegundos" HeaderText="TiempoenSegundos" SortExpression="TiempoenSegundos" />
                    <asp:BoundField DataField="SitioInteres" HeaderText="SitioInteres" SortExpression="SitioInteres" />
                    <asp:BoundField DataField="DistanciaSI" HeaderText="DistanciaSI" SortExpression="DistanciaSI" />
                    <asp:BoundField DataField="ValorTemp" HeaderText="ValorTemp" SortExpression="ValorTemp" />
                    <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
                    <asp:BoundField DataField="Mostrar" HeaderText="Mostrar" ReadOnly="True" SortExpression="Mostrar" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceReporte" runat="server" ConnectionString="<%$ ConnectionStrings:MaxerConnectionString %>" SelectCommand="spq_UltimaPosicionWEB" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="usr" SessionField="Usuario" Type="String" />
                    <asp:SessionParameter Name="pas" SessionField="Pass" Type="String" />
                    <asp:SessionParameter Name="cve" SessionField="Clave" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div id="odometro">
        </div>

    </div>
    
    <div id="panelCentral">
        <uc1:GoogleMapForASPNet runat="server" id="GoogleMapForASPNet" />

    </div>
</asp:Content>


