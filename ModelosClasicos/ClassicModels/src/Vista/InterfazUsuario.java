/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;

/**
 *
 * @author HaroldCupitra
 */
public class InterfazUsuario extends JFrame{
    
    private Pedidos objetoPedidos = new Pedidos();
    
    public InterfazUsuario(){
        setTitle("Modelos Clasicos");
        setSize(600,600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        getContentPane().add(panelPrincipal());
    }
    
    private JPanel panelPrincipal(){
        JPanel p = new JPanel();//Panel que contendra la pantalla principal
        JTabbedPane pestañas =  new JTabbedPane(); //Elemento para agregar Pestañas
        
        //Agregamos los elementos que iran en cada 'pestaña'
        pestañas.addTab("Pedidos", objetoPedidos.panelPedidos());
        
        //Layout:Manera en que se va a distribuir los elementos que contiene el panel 'p'
        p.setLayout(new GridLayout(1,1));//GridLayout: si los elementos se van a distribuir en forma de matriz (filas,columnas) 
        p.add(pestañas); //agregamos el elementos JTabbedPane 'pestañas'  al panel para mostrarlo al usuario
        return p;
    }

    public Pedidos getObjetoPedidos() {
        return objetoPedidos;
    }
    
    
    
    
}
