/*
    En esta clase se realiza la conexion a la BD, contiene 4 metodos 
    obtener: realiza la conexion a la BD
    cerrar: cierra la conexion a la bd
    ejecutarActualizacion: se encarga de hacer las inserciones, actualizaciones y eliminar datos de la BD.
    consultar: se usa para relaizar consultas a la BD

    NOTA: Es necesario agregar el archivo con extension .jar en la carpeta librerias del proyecto.
 */
package Conexion;

import static Conexion.Conexion.cerrar;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 * @author Harold Cupitra 
 */
public class Conexion {
    //Variable para realizar la conexion
    private static Connection cnx = null;
    
    //Realizamos la conexion a la BD
    public static Connection obtener() throws SQLException, ClassNotFoundException {
      if (cnx == null) {//si la conexion es nula
         try {
            Class.forName("com.mysql.jdbc.Driver");
            cnx = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/modelos", "root", "");//nombre BD, usuario, contrasenia
            System.out.println("Conexion exitosa a BD");//imprime por consola
         } catch (SQLException ex) {
            throw new SQLException(ex);//En caso de algun error de tipo sql al realizar la conexion imprime por consola 
         } catch (ClassNotFoundException ex) {
            throw new ClassCastException(ex.getMessage());
         }
      }
      return cnx;
   }
    
    //Cierra la conexion a la BD
    public static void cerrar() throws SQLException {
      if (cnx != null) {
         cnx.close();
      }
   }
  //Metodo para realizar actualizaciones en la BD - INSERTAR, ELIMINAR, ACTUALIZAR -
  public static int ejecutarActualizacion(String sql) 
  {  Statement st = null; //Statement: se usa para ejecutar sentencias SQL
     try 
     {  st = cnx.createStatement();
	int res = st.executeUpdate(sql); //Devuelve un entero con el numero de filas afectadas
	return res;
     } catch (SQLException e) 
       {  e.printStackTrace();
          JOptionPane.showMessageDialog(null,e);//En caso de que ocurra un Error al ejecutar la actualizacion lo muestra por una ventana emergente
	  return 0;
       } finally 
         {  try 
            {  if (st != null) 
               {  st.close(); //Cierra el statement
	       }
                //cerrar(); //Cierra la conexion
            } catch (SQLException e) 
              {  e.printStackTrace();
              } 
	 }
  }

  //Metodo para realizar consultas en la BD
  public static ResultSet ejecutarConsulta(String sql) 
  {  Statement st = null; 
     try 
     {  st = cnx.createStatement();
	ResultSet res = st.executeQuery(sql);//ResulSet: Representa el resultado de una ejecucion de consulta SQL, lleva asociada filas y columnas con sus valores
	return res;
     } catch (SQLException e) 
     {  e.printStackTrace(); //En caso que ocurra un error de tipo SQL muestra el error por consola
	  return null;
     }
     /*finally{
      try {
          cerrar(); //cierra la conexion
      } catch (SQLException ex) {
          Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
      }
     }*/
  }
    
}
