/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author DELL
 */
import java.awt.*;
import javax.swing.*;
public class ArrowIcon extends JButton{
    
    public ArrowIcon() {
//        super(text);
//        setOpaque(false);
//        setContentAreaFilled(false);
//        setBorderPainted(false);
//        setFocusPainted(false);
//        setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
//        setFont(getFont().deriveFont(Font.BOLD, 14f));
        setForeground(Color.white);
        setIcon(makeArrowIcon(12, Color.white));
        setIconTextGap(8);
//        setBorder(new EmptyBorder(6, 12, 6, 12));
    }
     
    public static Icon makeArrowIcon(int size, Color color) {
        return new Icon() {
            @Override public void paintIcon(Component c, Graphics g, int x, int y) {
                Graphics2D g2 = (Graphics2D) g.create();
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                g2.setColor(color);
                int w = size;
                int h = size;
                Polygon p = new Polygon(new int[]{w, 0, w}, new int[]{0, h/2, h}, 3);
                g2.fill(p);
                g2.dispose();
            }
            @Override public int getIconWidth()  { return size; }
            @Override public int getIconHeight() { return size; }
        };
    }
//     @Override
//    protected void paintComponent(Graphics g) {
//        Graphics2D g2 = (Graphics2D) g.create();
//        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
//
//        if (getModel().isRollover()) {
//            g2.setColor(new Color(0,60,210,255));
//        } else {
//            g2.setColor(new Color(0,90,243,255));
//        }
//
//        g2.fillRoundRect(0, 0, getWidth(), getHeight(), 10, 10);
//            g2.setColor(Color.WHITE);
//            FontMetrics fm = g2.getFontMetrics();
//            int textWidth = fm.stringWidth(getText());
//            int textHeight = fm.getAscent();
//            g2.drawString(getText(), (getWidth() - textWidth) / 2,
//                (getHeight() + textHeight) / 2 - 2); 
//    }
}
