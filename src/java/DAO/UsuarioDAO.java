/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

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

/**
 *
 * @author USER
 */
public class UsuarioDAO {
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Usuario usu=new Usuario();
    Conexion cn= new Conexion();
    
    public boolean registrar(Usuario usu) throws SQLException{
        String sql="insert into cat_usuarios(nombre,apellido,correo,password)values('"+usu.getNombre()+"','"+usu.getApellido()+"','"+usu.getCorreo()+"','"+usu.getPassword()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;    
    }
    public boolean login(String usu, String contra){
        boolean bandera=true;
        try{
            String sql="select password,nombre from cat_usuarios where nombre='"+usu+"'and password='"+contra+"'";
            con=cn.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            System.out.println(rs);
            while(rs.next()){            
                String pass=rs.getString("password");
                String nom=rs.getString("nombre");
                System.out.println(pass);
                if(pass.equals(contra)){
                    if(nom.equals(usu)){
                        bandera=true;
                    }
                }else{
                    bandera=false;
                }
            }
        }catch(SQLException e){
            System.out.println("error"+e);
       }
    return bandera;
    }
    
    public List consultar(){
        ArrayList<Usuario> list = new ArrayList<>();
        String sql="select * from cat_usuarios";
        try{
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Usuario usu = new Usuario();
                usu.setNombre(rs.getString("nombre"));
                usu.setApellido(rs.getString("apellido"));
                usu.setPassword(rs.getString("password"));
                usu.setCorreo(rs.getString("correo"));
                list.add(usu);
            }
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return list;
    }
    
    public boolean buscar(String usu){
        boolean bandera=true;
        try{
            String sql="select nombre from cat_usuarios where nombre='"+usu+"'";
            con=cn.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            System.out.println(rs);
            while(rs.next()){            
                String pass=rs.getString("password");
                String nom=rs.getString("nombre");
                System.out.println(pass);                
                if(nom.equals(usu)){
                    bandera=true;
                }                
            }
        }catch(SQLException e){
            System.out.println("error"+e);
       }
    return bandera;
    }
}
