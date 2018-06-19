/*
    Esta es la clase principal de la cual hacemos llamado a todas las clases y funciones que queremos que se ejecuten o muestren 
    cuando iniciamos el programa
 */
package classicmodels;

import Controlador.PedidosCtrl;
import DAO.PedidosDao;
import DTO.PedidosDto;
import FACADE.PedidosFacade;
import Vista.InterfazUsuario;
import java.sql.SQLException;

/**
 *
 * @author Harold Cupitra
 */
public class ClassicModels {
    
    public ClassicModels() throws SQLException, ClassNotFoundException{
        Conexion.Conexion.obtener();
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ClassicModels principal = new ClassicModels();
        
        //VISTA
        InterfazUsuario gui = new InterfazUsuario();
        
        //DTO
        PedidosDto dto = new PedidosDto();
        //DAO
        PedidosDao dao = new PedidosDao();
        //FACADE
        PedidosFacade pedidosF = new PedidosFacade();
        //CONTROLADOR
        PedidosCtrl ctrl = new PedidosCtrl(gui,pedidosF);
        //EJECUTAR ANTES DE CARGAR LA VISTA
        gui.getObjetoPedidos().fijarEscuchas(ctrl);
        ctrl.cargarDatosIniciales();
        gui.setVisible(true);
    }
    
}
