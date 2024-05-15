
package com.emergentes.dao;

import com.emergentes.modelo.Estudiante;
import com.emergentes.utiles.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstudianteDAOimpl extends ConexionBD implements EstudianteDAO{

    @Override
    public void insert(Estudiante estudiante) throws Exception {
       try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement
        ("INSERT into estudiantes (nombres,apellidos,seminario,confirmado,fecha_inscripcion) values (?,?,?,?,?)");
            ps.setString(1, estudiante.getNombres());
            ps.setString(2, estudiante.getApellidos());
            ps.setString(3, estudiante.getSeminario());
            ps.setString(4, estudiante.getConfirmado());
            ps.setString(5, estudiante.getFecha_inscripcion());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Estudiante estudiante) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement
        ("UPDATE estudiantes set nombres = ?, apellidos = ?, seminario = ?, confirmado = ?, fecha_inscripcion = ? where id = ?");
          
            ps.setString(1, estudiante.getNombres());
            ps.setString(2, estudiante.getApellidos());
            ps.setString(3, estudiante.getSeminario());
            ps.setString(4, estudiante.getConfirmado());
            ps.setString(5, estudiante.getFecha_inscripcion());
            ps.setInt(6, estudiante.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM estudiantes WHERE id = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Estudiante getById(int id) throws Exception {
       Estudiante est = new Estudiante();
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM estudiantes WHERE id = ? limit 1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                est.setId(rs.getInt("id"));
                est.setNombres(rs.getString("nombres"));
                est.setApellidos(rs.getString("apellidos"));
                est.setSeminario(rs.getString("seminario"));
                est.setConfirmado(rs.getString("confirmado"));
                est.setFecha_inscripcion(rs.getString("fecha_inscripcion"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return est;
    }

    @Override
    public List<Estudiante> getAll() throws Exception {
        List<Estudiante> lista = null;
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM estudiantes");
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<Estudiante>();
            while (rs.next()) {
                Estudiante est = new Estudiante();
                est.setId(rs.getInt("id"));
                est.setNombres(rs.getString("nombres"));
                est.setApellidos(rs.getString("apellidos"));
                est.setSeminario(rs.getString("seminario"));
                est.setConfirmado(rs.getString("confirmado"));
                est.setFecha_inscripcion(rs.getString("fecha_inscripcion"));
                
                lista.add(est);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
