/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bus.management;

/**
 *
 * @author kamlesh
 */
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class DialogEg {

   private static void createAndShowGui() {
      MainWin mainPanel = new MainWin();

      JFrame frame = new JFrame("DialogEg");
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      frame.getContentPane().add(mainPanel);
      frame.pack();
      frame.setLocationByPlatform(true);
      frame.setVisible(true);
   }

   public static void main(String[] args) {
      SwingUtilities.invokeLater(new Runnable() {
         public void run() {
            createAndShowGui();
         }
      });
   }
}

class MainWin extends JPanel {
   private String[] COL_NAMES = { "Last Name", "First Name" };
   private DefaultTableModel model = new DefaultTableModel(COL_NAMES, 0);
   private JTextField lastNameField = new JTextField(15);
   private JTextField firstNameField = new JTextField(15);

   public MainWin() {
      final JPanel dataPanel = new JPanel();
      dataPanel.add(new JLabel("Last Name:"));
      dataPanel.add(lastNameField);
      dataPanel.add(Box.createHorizontalStrut(15));
      dataPanel.add(new JLabel("First Name:"));
      dataPanel.add(firstNameField);

      JPanel btnPanel = new JPanel();
      btnPanel.add(new JButton(new AbstractAction("Add Name") {

         @Override
         public void actionPerformed(ActionEvent arg0) {
            lastNameField.setText("");
            firstNameField.setText("");
            int result = JOptionPane.showConfirmDialog(MainWin.this, dataPanel,
                  "Enter Name", JOptionPane.OK_CANCEL_OPTION, JOptionPane.PLAIN_MESSAGE);
            if (result == JOptionPane.OK_OPTION) {
               String lastName = lastNameField.getText();
               String firstName = firstNameField.getText();
               Object[] dataRow = new String[] { lastName, firstName };
               model.addRow(dataRow);
            }
         }
      }));

      setLayout(new BorderLayout());
      add(new JScrollPane(new JTable(model)), BorderLayout.CENTER);
      add(btnPanel, BorderLayout.SOUTH);

   }
}
