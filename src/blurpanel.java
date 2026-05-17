
import java.awt.*;
import javax.swing.JPanel;

class blurpanel extends JPanel{
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g.create();
        g2d.setComposite(AlphaComposite.SrcOver);
        g2d.setColor(new Color(255, 255, 255, 215)); // white with transparency
        g2d.fillRect(0, 0, getWidth(), getHeight());
        g2d.dispose();
    }
}