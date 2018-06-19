/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conexion.Conexion;
import DTO.PedidosDto;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Harold Cupitra
 */
public class PedidosDao{
    
    /*Consulta los nombres de los clientes en la BD*/
    public PedidosDto consultarClientes(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarClientes());
        PedidosDto per = null;
        try{
            
            //Obtenemos el numero de filas para asigar el tamaño al arreglo que contendra la respuesta
            if(rs.last()){//Vamos a la ultima fila de la consulta
                per = new PedidosDto(rs.getRow());//asignamos el tamaño a la variable
                rs.beforeFirst();
            }
            int i = 0;
            while(rs.next()){
                //agregamos los nombres al arreglo 
                per.aClientes[i] = rs.getString(1);
                i += 1;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    public PedidosDto consultarGrupos(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarGrupos());
        PedidosDto per = null;
        try{
            
            //Obtenemos el numero de filas para asigar el tamaño al arreglo que contendra la respuesta
            if(rs.last()){//Vamos a la ultima fila de la consulta
                per = new PedidosDto(rs.getRow());//asignamos el tamaño a la variable
                rs.beforeFirst();
            }
            int i = 0;
            while(rs.next()){
                //agregamos los nombres al arreglo 
                per.aClientes[i] = rs.getString(1);
                i += 1;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    public PedidosDto consultarProductos(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarProductos());
        PedidosDto per = null;
        try{
            
            //Obtenemos el numero de filas para asigar el tamaño al arreglo que contendra la respuesta
            if(rs.last()){//Vamos a la ultima fila de la consulta
                per = new PedidosDto(rs.getRow());//asignamos el tamaño a la variable
                rs.beforeFirst();
            }
            int i = 0;
            while(rs.next()){
                //agregamos los nombres al arreglo 
                per.aClientes[i] = rs.getString(1);
                i += 1;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    public PedidosDto consultarDatosCliente(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarDatosCliente());
        PedidosDto per = null;
        try{
            per = new PedidosDto();
            while(rs.next()){
                per.setTelefono(rs.getString(1));
                per.setCorreo(rs.getString(2));
                per.setEnlace(rs.getString(3));
                per.setDireccion(rs.getString(4));
                per.setCodCliente(rs.getInt(5));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    public PedidosDto consultarDatosProducto(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarDatosProducto());
        PedidosDto per = null;
        try{
            per = new PedidosDto();
            while(rs.next()){
                per.setDescripcion(rs.getString(1));
                per.setPrecioVenta(rs.getString(2));
                per.setStock(rs.getString(3));
                per.setCodProducto(rs.getInt(4));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    public PedidosDto consultarUltimoPedido(PedidosDto objetoInterfaz){
        ResultSet rs = Conexion.ejecutarConsulta(objetoInterfaz.consultarUltimoPedido());
        PedidosDto per = null;
        try{
            per = new PedidosDto();
            while(rs.next()){
                per.setCodPedido(rs.getInt(1));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return per;
    }
    
    //Actualiza el nombre del propietario de la mascota
    public Boolean insertarPedidos(PedidosDto objetoInterfaz){
        return Conexion.ejecutarActualizacion(objetoInterfaz.insertar()) == 1;
    }
    
}
