/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Conexion.Conexion;
import FACADE.PedidosFacade;
import Vista.Pedidos;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import DTO.PedidosDto;
import Vista.InterfazUsuario;
import java.util.Calendar;
import static java.util.Calendar.DAY_OF_MONTH;
import static java.util.Calendar.MONTH;
import static java.util.Calendar.YEAR;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;
/**
 *
 * @author HaroldCupitra
 */
public class PedidosCtrl implements ActionListener{
    private InterfazUsuario gui;
    private PedidosFacade fd;
    private PedidosDto dtoPro = null;
    private PedidosDto dtoCli = null;
    
    public PedidosCtrl(InterfazUsuario gui, PedidosFacade fd){
        this.gui = gui;
        this.fd = fd;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == gui.getObjetoPedidos().getComboGrupo()){
            gui.getObjetoPedidos().getComboProducto().removeAllItems();
            String grupoSeleccionado = gui.getObjetoPedidos().getComboGrupo().getSelectedItem().toString();
            cargarDatosComboProducto(grupoSeleccionado);
        }else if(e.getSource() == gui.getObjetoPedidos().getComboCliente()){
            String itemSeleccionado = gui.getObjetoPedidos().getComboCliente().getSelectedItem().toString();
            cargarDatosCliente(itemSeleccionado);
        }else if(e.getSource() == gui.getObjetoPedidos().getComboProducto()){
            String itemSeleccionado = String.valueOf(gui.getObjetoPedidos().getComboProducto().getSelectedItem());
            cargarDatosProducto(itemSeleccionado);
        }else if(e.getSource() == gui.getObjetoPedidos().getBtnAceptar()){
            cargarDatosTabla();
        }else if(e.getSource() == gui.getObjetoPedidos().getBtnRealizarPedido()){
            almacenarDatos();
            limpiarCampos();
        }
    }
    
    public void cargarDatosIniciales(){
       cargarDatosComboCliente();
       cargarDatosComboGrupo();
       cargarDatosComboProducto(gui.getObjetoPedidos().getComboGrupo().getSelectedItem().toString());
       cargarComboCantidad();
       cargarNumeroPedido();
    }
    
    private void cargarDatosComboCliente(){
        PedidosDto dto = fd.consultarClientes();
        for(int i = 0; i< dto.aClientes.length; i++){
            gui.getObjetoPedidos().getComboCliente().addItem(dto.aClientes[i]); 
        }
        dto.aClientes = null;
    }

    private void cargarDatosComboGrupo() {
        PedidosDto dto = fd.consultarGrupos();
        for(int i = 0; i< dto.aClientes.length; i++){
            gui.getObjetoPedidos().getComboGrupo().addItem(dto.aClientes[i]); 
        }
        dto.aClientes = null;
    }

    private void cargarDatosComboProducto(String grupoSeleccionado) {
        PedidosDto dto = fd.consultarProductos(grupoSeleccionado);
        for(int i = 0; i< dto.aClientes.length; i++){
            gui.getObjetoPedidos().getComboProducto().addItem(dto.aClientes[i]); 
        }
        dto.aClientes = null;
    }

    private void cargarComboCantidad() {
        for(int i = 1; i <11; i++){
            gui.getObjetoPedidos().getComboCantidad().addItem(i);
        }
    }

    private void cargarDatosCliente(String itemSeleccionado) {
        dtoCli = fd.consultarDatosCliente(itemSeleccionado);
        gui.getObjetoPedidos().getTxtTelefono().setText(dtoCli.getTelefono());
        gui.getObjetoPedidos().getTxtCorreo().setText(dtoCli.getCorreo());
        gui.getObjetoPedidos().getTxtEnlace().setText(dtoCli.getEnlace());
        gui.getObjetoPedidos().getTxtDireccion().setText(dtoCli.getDireccion());
    }

    
    private void cargarDatosProducto(String itemSeleccionado) {
        dtoPro = fd.consultarDatosProducto(itemSeleccionado);
        gui.getObjetoPedidos().getTxtDescripcion().setText(dtoPro.getDescripcion());
        gui.getObjetoPedidos().getTxtPrecioVenta().setText(dtoPro.getPrecioVenta());
        gui.getObjetoPedidos().getTxtStock().setText(dtoPro.getStock());
    }

    private void cargarNumeroPedido() {
        PedidosDto dto = fd.consultarUltimoPedido();
        gui.getObjetoPedidos().getTxtPedidoNumero().setText(String.valueOf(dto.getCodPedido()+1));
        
        //cargamos la fecha
        Calendar fecha = new GregorianCalendar();
        gui.getObjetoPedidos().getTxtFecha().setText((fecha.get(YEAR)+"-"+((fecha.get(MONTH)+1))+"-"+fecha.get(DAY_OF_MONTH)));
    }

    private void cargarDatosTabla() {
        int codProducto = dtoPro.getCodProducto(); //Obtiene el codigo del producto 
        String productoSeleccionado = String.valueOf(gui.getObjetoPedidos().getComboProducto().getSelectedItem());  
        String cantidadSeleccionada = String.valueOf(gui.getObjetoPedidos().getComboCantidad().getSelectedItem());  
        String precio = String.valueOf(gui.getObjetoPedidos().getTxtPrecioVenta().getText());
        Double subtotal = Double.parseDouble(precio) * Double.parseDouble(cantidadSeleccionada) ;
        gui.getObjetoPedidos().getModeloTabla().addRow(new Object[]{codProducto,productoSeleccionado,cantidadSeleccionada,precio,subtotal}); //agrega la fila
    }

    private void almacenarDatos() {
        int numPedido =Integer.parseInt(gui.getObjetoPedidos().getTxtPedidoNumero().getText());
        String fechaPedido = gui.getObjetoPedidos().getTxtFecha().getText();
        String estado = gui.getObjetoPedidos().getTxtEstado().getText();
        String comentario = gui.getObjetoPedidos().getTxtComentarios().getText();
        int idCliente = dtoCli.getCodCliente();
        
        fd.insertarPedido(numPedido, fechaPedido, estado, comentario, idCliente);//Inserta los datos de la tabla Pedido
        
        //En sqlDetalles se construye el script de insercion en la BD
        String sqlDetalles = "insert into detallespedido(idPedido,codProducto,cantidad,precioUnitario) values";
        //Numero de filas
        int filas = gui.getObjetoPedidos().getModeloTabla().getRowCount();
        int columnas = gui.getObjetoPedidos().getModeloTabla().getColumnCount();
        
        //  Mostramos los valores de las filas por columnas
        for(int i = 0 ; i< filas ; i++){//Ciclo de filas
            String sql1 = sqlDetalles; //sql1: variable utilizada para concatenar y enviar a insertar
            sql1 += "("+numPedido+"";
            for(int j = 0; j<columnas; j++){//Ciclo de columnas
                switch(j){//Evalua en que columna de la fila se encuentra para concatenar los valores a la variable 'sql'
                    case 0:
                        sql1 += ", "+String.valueOf(gui.getObjetoPedidos().getModeloTabla().getValueAt(i, j)) + ", ";
                        break;
                    case 2:
                        sql1 += String.valueOf(gui.getObjetoPedidos().getModeloTabla().getValueAt(i, j)) + ", ";
                        break;
                    case 3:
                        if(i ==  filas-1){
                            sql1 += "'"+String.valueOf(gui.getObjetoPedidos().getModeloTabla().getValueAt(i, j))+"')";
                        }else{
                            sql1 += "'"+String.valueOf(gui.getObjetoPedidos().getModeloTabla().getValueAt(i, j))+"'),";
                        }                        
                        break;
                }
            }
            sqlDetalles = sql1;
        }
        insertarPedidoBD(sqlDetalles);
    }

    private void insertarPedidoBD(String sqlInsertar) {
        try{
            System.out.println(sqlInsertar);
            if(Conexion.ejecutarActualizacion(sqlInsertar)!=0){
                JOptionPane.showMessageDialog(null,"Pedido Registrado","OK",JOptionPane.INFORMATION_MESSAGE);
            }
        }
        catch(Exception e){
            e.printStackTrace();
            JOptionPane.showMessageDialog(null,"Pedido NO Registrado","ERROR!",JOptionPane.ERROR_MESSAGE);
        }
    }

    private void limpiarCampos() {
        
        //Limpiamos las cajas de texto de estado y comentario
        gui.getObjetoPedidos().getTxtComentarios().setText("");
        gui.getObjetoPedidos().getTxtEstado().setText("");
        
        //Eliminamos las filas de la tabla
        int filas = gui.getObjetoPedidos().getModeloTabla().getRowCount();
        System.out.println(filas);  
        for(int i = filas-1; i >=0; i--){
            gui.getObjetoPedidos().getModeloTabla().removeRow(i);
        }
        //cargamos el codigo del siguiente pedido
        cargarNumeroPedido();
        
        gui.getObjetoPedidos().getComboCantidad().setSelectedIndex(0);
    }
}
