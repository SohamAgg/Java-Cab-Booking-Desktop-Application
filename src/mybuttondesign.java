
import java.awt.*;
import javax.swing.*;

class mybuttondesign extends JButton{

            @Override
            protected void paintComponent(Graphics g) {
            Graphics2D g2 = (Graphics2D) g;
            g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            if (getModel().isRollover()) {
                g2.setColor(new Color(0,60,210,255));
            } else {
                g2.setColor(new Color(0,90,243,255));
            }
            g2.fillRoundRect(0, 0, getWidth(), getHeight(), 10, 10);
            g2.setColor(Color.WHITE);
            FontMetrics fm = g2.getFontMetrics();
            int textWidth = fm.stringWidth(getText());
            int textHeight = fm.getAscent();
            g2.drawString(getText(), (getWidth() - textWidth) / 2,
                (getHeight() + textHeight) / 2 - 2);    
        }
}
