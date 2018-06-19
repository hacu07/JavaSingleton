/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.PopupMenu;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import Controlador.PedidosCtrl;
/**
 *
 * @author HaroldCupitra
 */
public class Pedidos extends JPanel{
    
    //Variables Globales
    
    //Elementos graficos a usar:
    //pNorte1
    private JTextField txtTelefono, txtCorreo, txtEnlace, txtDireccion;
    private JComboBox comboCliente;
    //pNorte2
    private JTextField txtDescripcion,txtPrecioVenta,txtStock;
    private JComboBox comboGrupo,comboProducto,comboCantidad;
    private JButton btnAceptar;
    //pNorte3
    private JTextField txtPedidoNumero,txtFecha,txtEstado,txtComentarios;
    private JButton btnRealizarPedido;
    
    //panelSur
    private JScrollPane scroll; //Elemento usado para agregarle la tabla con el fin de que cuando se aumenten los campos aparezca la barra de desplazamiento.
    private JTable tblPedidos;
    private DefaultTableModel modeloTabla;
    
    //Metodo Constructor
    public Pedidos(){
        inicializarElementos();
    }
    
    public void fijarEscuchas(PedidosCtrl c){
        comboCliente.addActionListener(c);
        comboGrupo.addActionListener(c);
        comboProducto.addActionListener(c);
        comboCantidad.addActionListener(c);
        btnAceptar.addActionListener(c);
        btnRealizarPedido.addActionListener(c);
    }
    
    public void inicializarElementos(){
        //pNorte1
        comboCliente = new JComboBox();
        txtTelefono = new JTextField(30);
        txtCorreo = new JTextField(30);
        txtEnlace = new JTextField(30);
        txtDireccion = new JTextField(30);
        
        //pNorte2
        comboGrupo = new JComboBox();
        comboProducto = new JComboBox();
        txtDescripcion = new JTextField(30);
        txtPrecioVenta = new JTextField(30);
        txtStock = new JTextField(30);
        comboCantidad = new JComboBox();
        btnAceptar = new JButton("Aceptar");
        
        //pNorte3
        txtPedidoNumero = new JTextField(30);
        txtFecha = new JTextField(30);
        txtEstado = new JTextField(30);
        txtComentarios = new JTextField(30);
        btnRealizarPedido = new JButton("Realizar Pedido");
        
        //panelSur
        //Titulos de columnas
        String[] cabecerasTabla = {"Codigo","Producto","Cantidad","Valor Unitario","Subtotal"};
        modeloTabla= new DefaultTableModel(null,cabecerasTabla);
        tblPedidos = new JTable(modeloTabla);
        scroll = new JScrollPane(tblPedidos);
        
        //Define los elementos que no son editables
        cambiarEstadoEditable();
    }
    
    //Contruccion del panel Principal
    public JPanel panelPedidos(){
        JPanel p = new JPanel();
        p.setLayout(new GridLayout(2,1,0,30));
        p.add(panelNorte());
        p.add(panelSur());
        return p;
    }
    
    private JPanel panelNorte(){
        JPanel p = new JPanel();
        p.setLayout(new GridLayout(1,3,30,0));//1 fila, 3 columnas
        p.add(pNorte1());
        p.add(pNorte2());
        p.add(pNorte3());
        return p;
    }

    private JPanel pNorte1() {
        JPanel pN1 = new JPanel();
        pN1.setLayout(new GridLayout(10,1));
        pN1.add(new JLabel("Cliente"));
        pN1.add(comboCliente);
        pN1.add(new JLabel("Telefono"));
        pN1.add(txtTelefono);
        pN1.add(new JLabel("Correo Electronico"));
        pN1.add(txtCorreo);
        pN1.add(new JLabel("Enlace"));
        pN1.add(txtEnlace);
        pN1.add(new JLabel("Direccion"));
        pN1.add(txtDireccion);
        return pN1;        
    }

    private JPanel pNorte2() {
        //PanelAuxilar
        JPanel pAux = new JPanel();
        pAux.setLayout(new GridLayout(1,2,20,0));
        pAux.add(comboCantidad);
        pAux.add(btnAceptar);
        
        JPanel pN2 = new JPanel();
        pN2.setLayout(new GridLayout(12,1));
        pN2.add(new JLabel("Grupo"));
        pN2.add(comboGrupo);
        pN2.add(new JLabel("Producto"));
        pN2.add(comboProducto);
        pN2.add(new JLabel("Descripcion"));
        pN2.add(txtDescripcion);
        pN2.add(new JLabel("Precio venta"));
        pN2.add(txtPrecioVenta);
        pN2.add(new JLabel("Stock"));
        pN2.add(txtStock);
        pN2.add(new JLabel("Cantidad a pedir"));
        pN2.add(pAux);
        return pN2;
    }
    
    private JPanel pNorte3() {
        JPanel pN3 = new JPanel();
        pN3.setLayout(new GridLayout(9,1));
        pN3.add(new JLabel("PedidoNumero"));
        pN3.add(txtPedidoNumero);
        pN3.add(new JLabel("Fecha"));
        pN3.add(txtFecha);
        pN3.add(new JLabel("Estado"));
        pN3.add(txtEstado);
        pN3.add(new JLabel("Comentarios"));
        pN3.add(txtComentarios);
        pN3.add(btnRealizarPedido);
        return pN3;
    }    
        
    private JPanel panelSur(){
        JPanel p = new JPanel();
        p.setLayout(new GridLayout(1,1));
        p.add(scroll);
        return p;
    }
    
    private void cambiarEstadoEditable() {
        //No editables pNorte1
        txtTelefono.setEditable(false);
        txtCorreo.setEditable(false);
        txtEnlace.setEditable(false);
        txtDireccion.setEditable(false);
        //No editables pNorte2
        txtDescripcion.setEditable(false);
        txtPrecioVenta.setEditable(false);
        txtStock.setEditable(false);
        //No editables pNorte3
        txtPedidoNumero.setEditable(false);
        txtFecha.setEditable(false);
        //panelSur
        tblPedidos.setEnabled(false);
    }

    public JTextField getTxtTelefono() {
        return txtTelefono;
    }

    public JTextField getTxtCorreo() {
        return txtCorreo;
    }

    public JTextField getTxtEnlace() {
        return txtEnlace;
    }

    public JTextField getTxtDireccion() {
        return txtDireccion;
    }

    public JTextField getTxtDescripcion() {
        return txtDescripcion;
    }

    public JTextField getTxtPrecioVenta() {
        return txtPrecioVenta;
    }

    public JComboBox getComboCantidad() {
        return comboCantidad;
    }

    public JButton getBtnAceptar() {
        return btnAceptar;
    }

    public JTextField getTxtPedidoNumero() {
        return txtPedidoNumero;
    }

    public JTextField getTxtFecha() {
        return txtFecha;
    }

    public JTextField getTxtEstado() {
        return txtEstado;
    }

    public JTextField getTxtComentarios() {
        return txtComentarios;
    }

    public JButton getBtnRealizarPedido() {
        return btnRealizarPedido;
    }

    public JScrollPane getScroll() {
        return scroll;
    }

    public JTable getTblPedidos() {
        return tblPedidos;
    }

    public DefaultTableModel getModeloTabla() {
        return modeloTabla;
    }

    public JComboBox getComboCliente() {
        return comboCliente;
    }

    public JTextField getTxtStock() {
        return txtStock;
    }

    public JComboBox getComboGrupo() {
        return comboGrupo;
    }

    public JComboBox getComboProducto() {
        return comboProducto;
    }
     
}
