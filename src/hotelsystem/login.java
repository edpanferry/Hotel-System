/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelsystem;



import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;

/**
 *
 * @author Edpan
 */
public class login extends javax.swing.JFrame {

    /**
     * Creates new form login
     */
      QueryProcessor process;
        Object getUsers[][];
       
    public login() {
        initComponents();
         process = new QueryProcessor();
        setLocationRelativeTo(null);
        
        pass_error.hide();
        username_error.hide();
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        password = new javax.swing.JPasswordField();
        pass_error = new javax.swing.JLabel();
        username = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        username_error = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);
        getContentPane().setLayout(null);

        password.setBackground(java.awt.SystemColor.control);
        password.setBorder(null);
        password.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                passwordKeyReleased(evt);
            }
        });
        getContentPane().add(password);
        password.setBounds(460, 300, 230, 25);

        pass_error.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/s_cancel.png"))); // NOI18N
        getContentPane().add(pass_error);
        pass_error.setBounds(700, 300, 16, 30);

        username.setBorder(null);
        username.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                usernameFocusLost(evt);
            }
        });
        getContentPane().add(username);
        username.setBounds(460, 240, 230, 26);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/account.png"))); // NOI18N
        jButton1.setText("Login");
        jButton1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jButton1.setContentAreaFilled(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(520, 340, 120, 40);

        username_error.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/s_cancel.png"))); // NOI18N
        getContentPane().add(username_error);
        username_error.setBounds(700, 236, 16, 30);

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/login.jpg"))); // NOI18N
        jLabel3.setFocusable(false);
        getContentPane().add(jLabel3);
        jLabel3.setBounds(0, 0, 800, 500);

        setSize(new java.awt.Dimension(817, 539));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
int done=0;
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       
        if(username.getText().isEmpty())
            username_error.show();
        else{
            username_error.hide();
            done++;
        }
         if(password.getText().isEmpty())
            pass_error.show();
         else{
            pass_error.hide();
            done++;
         }
         
         if(done==2){
            
            getUsers=process.getAllRecord("SELECT * FROM `users_tbl` WHERE `username`='"+username.getText()+"'"); 
            
            if (getUsers!=null){ 
                String passw=process.getSpecificField("Select `password` from `users_tbl` where `username`='"+username.getText()+"'");
                    if(passw.equals(password.getText())) {
                      String account=process.getSpecificField("Select `access` from `users_tbl` where `username`='"+username.getText()+"'");
                        
                            home hm=new home(account);
                            hm.setVisible(true);
                            dispose();
                    }
                    else
                        pass_error.show();
                    
            }
            else   
             username_error.show();
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void usernameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_usernameFocusLost
        username_error.hide();
        String usern =process.getSpecificField("SELECT `username` FROM `users_tbl` WHERE `username` = '"+username.getText()+"' ");
        if(username.getText().equals(usern)){
            username_error.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/s_okay.png"))); 
            username_error.show();
        }
        else {
            username_error.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/s_cancel.png")));
            username_error.show();
        }
    }//GEN-LAST:event_usernameFocusLost

    private void passwordKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_passwordKeyReleased
        if(evt.getKeyCode()==KeyEvent.VK_ENTER){
             if(username.getText().isEmpty())
            username_error.show();
        else{
            username_error.hide();
            done++;
        }
         if(password.getText().isEmpty())
            pass_error.show();
         else{
            pass_error.hide();
            done++;
         }
         
            if(done==2){
            
            getUsers=process.getAllRecord("SELECT * FROM `users_tbl` WHERE `username`='"+username.getText()+"'"); 
            
            if (getUsers!=null){ 
                String passw=process.getSpecificField("Select `password` from `users_tbl` where `username`='"+username.getText()+"'");
                    if(passw.equals(password.getText())) {
                      String account=process.getSpecificField("Select `access` from `users_tbl` where `username`='"+username.getText()+"'");
                        
                            home hm=new home(account);
                            hm.setVisible(true);
                            dispose();
                    }
                    else
                        pass_error.show();
                    
            }
            else   
             username_error.show();
        }
        }
    }//GEN-LAST:event_passwordKeyReleased

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel pass_error;
    private javax.swing.JPasswordField password;
    private javax.swing.JTextField username;
    private javax.swing.JLabel username_error;
    // End of variables declaration//GEN-END:variables
}
