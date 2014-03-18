<%@ Page Title="" Language="C#" MasterPageFile="~/GUI.Master" AutoEventWireup="true" CodeFile="mapa.aspx.cs" Inherits="mapa" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="panelIzquierdo">
        <div id="Unidades">
            <asp:DropDownList ID="DropDownListUnidades" runat="server"></asp:DropDownList>
        </div>
        <div id="Reporte">
            <h3>Reporte Unidades:</h3>
            <asp:GridView ID="GridViewReporte" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceReporte">
                <Columns>
                    <asp:BoundField DataField="unidad" HeaderText="Economico" SortExpression="unidad" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" Visible="False" />
                    <asp:BoundField DataField="Contadormsj" HeaderText="Contadormsj" SortExpression="Contadormsj" Visible="False" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                    <asp:BoundField DataField="velocidad" HeaderText="velocidad" SortExpression="velocidad" Visible="False"/>
                    <asp:BoundField DataField="Latitud" HeaderText="Latitud" SortExpression="Latitud" Visible="False" />
                    <asp:BoundField DataField="Longitud" HeaderText="Longitud" SortExpression="Longitud" Visible="False" />
                    <asp:BoundField DataField="Distancia" HeaderText="Distancia" SortExpression="Distancia" Visible="False" />
                    <asp:BoundField DataField="Poblacion" HeaderText="Poblacion" SortExpression="Poblacion" Visible="False" />
                    <asp:BoundField DataField="Mensaje" HeaderText="Estado" SortExpression="Mensaje" />
                    <asp:BoundField DataField="TiempoenSegundos" HeaderText="TiempoenSegundos" SortExpression="TiempoenSegundos" Visible="False"/>
                    <asp:BoundField DataField="SitioInteres" HeaderText="SitioInteres" SortExpression="SitioInteres" Visible="False" />
                    <asp:BoundField DataField="DistanciaSI" HeaderText="DistanciaSI" SortExpression="DistanciaSI"  Visible="False"/>
                    <asp:BoundField DataField="ValorTemp" HeaderText="ValorTemp" SortExpression="ValorTemp" Visible="False" />
                    <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" Visible="False"/>
                    <asp:BoundField DataField="Mostrar" HeaderText="Mostrar" ReadOnly="True" SortExpression="Mostrar" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceReporte" runat="server" ConnectionString="<%$ ConnectionStrings:MaxerConnectionString %>" SelectCommand="spq_UltimaPosicionWEB" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="usr" SessionField="Usuario" Type="String" DefaultValue="prominorte" />
                    <asp:SessionParameter Name="pas" SessionField="Pass" Type="String"  DefaultValue="eLkSumFaa27uyFuWtzQYDQ"/>
                    <asp:SessionParameter Name="cve" SessionField="Clave" Type="String" DefaultValue="prominorte" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div id="estatus">
            <h2>Estatus de la unidad :</h2>

        </div>
        <div id="odometro">
            <h3>Odometro :</h3>
        </div>

    </div>
    
    <div id="panelCentral">

    </div>
</asp:Content>


