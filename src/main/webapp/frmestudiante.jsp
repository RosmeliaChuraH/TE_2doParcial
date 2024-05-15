
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
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
            <h1><c:if test="${estudiante.id == 0}">Nuevo</c:if>
                <c:if test="${estudiante.id == 0}">Editar</c:if>
                    estudiante
                </h1>
                <form action="Inicio" method="post">
                    <input type="hidden" name="id" value="${estudiante.id}"/>
                <div class="form-group">
                    <label>Nombres</label>
                    <input type="text" name="nombres" value="${estudiante.nombres}" class="form-control" />
                </div>
                <div class="form-group">
                    <label>Apellidos</label>
                    <input type="text" name="apellidos" value="${estudiante.apellidos}" class="form-control" />
                </div>
                <div class="form-group">
                    <label>Seminario</label>
                    <input type="text" name="seminario" value="${estudiante.seminario}" class="form-control" />
                </div>
                <br>
                
                <div class="form-group">
                            <label ><span>Confirmado</span>
                                <input type="checkbox" name="confirmado"  value="true" <c:if test="${estudiante.confirmado}">checked</c:if>  />  
                                </label>
                            </div>
                <br>
                <div class="form-group">
                    <label>Fecha Inscripcion</label>
                    <input type="date" name="fecha_inscripcion" value="${estudiante.fecha_inscripcion}" class="form-control" />
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Enviar"/>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>
