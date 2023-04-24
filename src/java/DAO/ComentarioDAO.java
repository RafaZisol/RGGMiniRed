/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
/**
 *
 * @author USER
 */
import Modelo.Usuario;
import Modelo.Comentario;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class ComentarioDAO {
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Comentario com = new Comentario();
    Conexion cn= new Conexion();
    
    public boolean comentar(Comentario com) throws SQLException{
        String sql="insert into comentarios(comentario,autor,comentado,fecha) values('"+com.getComentario()+"','"+com.getAutor()+"','"+com.getComentado()+"','"+com.getFecha()+"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
    return false;
    }
    
    public List consultar(String comentado){
        ArrayList<Comentario> list = new ArrayList<>();
        String sql="select * from comentarios where comentado='"+comentado+"'";
        try{
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Comentario com=new Comentario();
                com.setAutor(rs.getString("autor"));
                com.setComentado(rs.getString("comentado"));
                com.setComentario(rs.getString("comentario"));
                com.setFecha(rs.getString("fecha"));
            }
        }catch(Exception e){}
    return list;
    }
    
    
}
