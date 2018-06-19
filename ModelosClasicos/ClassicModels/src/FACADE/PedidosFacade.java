/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FACADE;

import DAO.PedidosDao;
import DTO.PedidosDto;

/**
 *
 * @author HaroldCupitra
 */
public class PedidosFacade {
    
    public PedidosDto consultarClientes(){
        PedidosDto dto = new PedidosDto();
        PedidosDao dao = new PedidosDao();
        return dao.consultarClientes(dto);
    }
    
    public PedidosDto consultarGrupos(){
        PedidosDto dto = new PedidosDto();
        PedidosDao dao = new PedidosDao();
        return dao.consultarGrupos(dto);
    }
    
    public PedidosDto consultarProductos(String grupoSeleccionado){
        PedidosDto dto = new PedidosDto();
        dto.setGrupoSeleccionado(grupoSeleccionado);
        PedidosDao dao = new PedidosDao();
        return dao.consultarProductos(dto);
    }
    
    public PedidosDto consultarDatosCliente(String clienteSeleccionado){
        PedidosDto dto = new PedidosDto();
        dto.setNombreCliente(clienteSeleccionado);
        PedidosDao dao = new PedidosDao();
        return dao.consultarDatosCliente(dto);
    }
    
    public PedidosDto consultarDatosProducto(String productoSeleccionado){
        PedidosDto dto = new PedidosDto();
        dto.setProductoSeleccionado(productoSeleccionado);
        PedidosDao dao = new PedidosDao();
        return dao.consultarDatosProducto(dto);
    }
    
    public PedidosDto consultarUltimoPedido(){
        PedidosDto dto = new PedidosDto();
        PedidosDao dao = new PedidosDao();
        return dao.consultarUltimoPedido(dto);
    }
    
    public boolean insertarPedido(int codPedido,String fechaPedido,String estado, String comentario, int codCliente){
        PedidosDto dto = new PedidosDto(codPedido,fechaPedido,estado,comentario,codCliente);
        PedidosDao dao = new PedidosDao();
        return dao.insertarPedidos(dto);
    }
}
