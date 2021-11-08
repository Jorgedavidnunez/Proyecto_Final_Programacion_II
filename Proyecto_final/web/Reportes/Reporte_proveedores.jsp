<%-- 
    Document   : Reporte_proveedores
    Created on : Oct 27, 2021, 5:27:05 PM
    Author     : Luis Fernando Paxel
--%>

<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="modelo.conexion2"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Proveedores</title>
    </head>
    <body>
        <%
            Connection con;
            conexion2 cnx = new conexion2();
            con = cnx.getCon();
            File reporte = new File(application.getRealPath("Reportes_wiz/Reporte_proveedores.jasper"));
            Map<String, Object> parameter = new HashMap<String, Object>();
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parameter, con);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outS = response.getOutputStream();
            outS.write(bytes, 0, bytes.length);
            outS.flush();
            outS.close();
        %>
    </body>
</html>
