/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author HaroldCupitra
 */
public class PedidosDto implements IDTO{
    //Variables Globales
    public String[] aClientes = null;
    private int codCliente,codProducto,codPedido;
    private String nombreCliente,telefono,correo,enlace,direccion,descripcion,precioVenta,stock,grupoSeleccionado,productoSeleccionado,fechaPedido,estado,comentario;
    
    //Constructor
    public PedidosDto(){
        super();
    }
        
    public PedidosDto(int numFilas){
        super();
        aClientes = new String[numFilas];
    }
    
    public PedidosDto(int codPedido,String fechaPedido,String estado, String comentario, int codCliente){
        super();
        this.codPedido = codPedido;
        this.fechaPedido = fechaPedido;
        this.estado = estado;
        this.comentario = comentario;
        this.codCliente = codCliente;
    }
    
    
    
    @Override
    public String consultar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    //Inserta en la tabla pedidos
    @Override
    public String insertar() {
        String sql = "INSERT INTO pedidos(idPedido,fechaPedido,estado,comentarios,idCliente) values("+codPedido+",'"+fechaPedido+"','"+estado+"','"+comentario+"',"+codCliente+")";
        return sql;
    }

    @Override
    public String actualizar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String Eliminar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String insertarDetalles(){
        String sql = "";
        return sql;
    }
    
    public String consultarClientes(){
        String sql = "SELECT nombreCliente FROM clientes";
        return sql;
    }
    
    public String consultarGrupos(){
        String sql = "SELECT nombreGrupo FROM gruposproductos";
        return sql;
    }
    
    public String consultarProductos(){
        String sql = "SELECT productos.nombreProducto From productos join gruposproductos on productos.codGrupo = gruposproductos.codGrupo "
                                                 + "where gruposproductos.nombreGrupo like '"+grupoSeleccionado+"'";
        return sql;
    }
    
    public String consultarDatosCliente(){
        String sql = "SELECT clientes.telefono, empleados.correoE, empleados.nombre, clientes.direccion, clientes.idCliente "
                                                 + "FROM clientes JOIN empleados ON clientes.empleadoEnlace = empleados.idEmpleado "
                                                 + "WHERE clientes.nombreCliente like \""+nombreCliente+"\"";
        return sql;
    }
    
    public String consultarDatosProducto(){
        String sql = "SELECT descripcionProducto, precioVenta, cantidadStock,codProducto FROM productos WHERE nombreProducto LIKE '"+productoSeleccionado+"'";
        System.out.println(sql);
        return sql;
    }
    
    public String consultarUltimoPedido(){
       String sql = "SELECT idPedido From pedidos ORDER by (idPedido) DESC limit 1";
       return sql;
    }

    public String getProductoSeleccionado() {
        return productoSeleccionado;
    }

    public void setProductoSeleccionado(String productoSeleccionado) {
        this.productoSeleccionado = productoSeleccionado;
    }

    public int getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(int codCliente) {
        this.codCliente = codCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String[] getClientes() {
        return aClientes;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getEnlace() {
        return enlace;
    }

    public void setEnlace(String enlace) {
        this.enlace = enlace;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(String precioVenta) {
        this.precioVenta = precioVenta;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getGrupoSeleccionado() {
        return grupoSeleccionado;
    }

    public void setGrupoSeleccionado(String grupoSeleccionado) {
        this.grupoSeleccionado = grupoSeleccionado;
    }

    public int getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(int codProducto) {
        this.codProducto = codProducto;
    }

    public int getCodPedido() {
        return codPedido;
    }

    public void setCodPedido(int codPedido) {
        this.codPedido = codPedido;
    }

    public String getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(String fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    
    
}
