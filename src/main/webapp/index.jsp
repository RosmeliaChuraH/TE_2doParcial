
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            h1 {
                text-align: center
            }
            .card{
                border: 1px solid black;
                width: 400px;
                text-align: center;
                border-radius: 5px;
                margin: 1rem auto;
            }
        </style>
    </head>
    <body>
        <div class='card'>
            <h3>SEGUNDO PARCIAL TEM-742</h2>
                <p>Nombre: Rosmelia Chura Huanca</p>
                <p>Carnet: 12389962</p>
        </div>
        <div class="container">
            <h1>Registro Día del Internet</h1>
            <p><a class="btn btn-success" href="Inicio?action=add">Nuevo</a></p>
            <table class="table table-striped table-hover">
                <tr>
                    <th>ID</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha Inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${estudiantes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombres}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminario}</td>
                        <td>
                            <label>
                                <input type="checkbox" name="confirmado" class="filled-in" <c:if
                                           test="${item.confirmado}">checked
                                       </c:if> />
                                <span></span>
                            </label>
                        </td>
                        <td>${item.fecha_inscripcion}</td>
                        <td><a class="btn btn-warning" href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="btn btn-danger" href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Está seguro'))">Eliminar</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>
