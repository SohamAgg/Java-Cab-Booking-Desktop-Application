
import java.awt.*;
import java.awt.image.*;
import javax.swing.*;

public class BlurLab {
    public static JLabel cb(Image bgImage, Rectangle area, String text) {
        // Convert Image to BufferedImage
        BufferedImage bufferedBg = new BufferedImage(
                bgImage.getWidth(null),
                bgImage.getHeight(null),
                BufferedImage.TYPE_INT_ARGB
        );
        Graphics g = bufferedBg.getGraphics();
        g.drawImage(bgImage, 0, 0, null);
        g.dispose();

        // Crop the portion where the label will be placed
        BufferedImage subImage = bufferedBg.getSubimage(area.x, area.y, area.width, area.height);

        // Apply a simple blur
        float[] blurKernel = {
            1f/16f, 2f/16f, 1f/16f,
            2f/16f, 4f/16f, 2f/16f,
            1f/16f, 2f/16f, 1f/16f
        };
        Kernel kernel = new Kernel(3, 3, blurKernel);
        ConvolveOp op = new ConvolveOp(kernel, ConvolveOp.EDGE_NO_OP, null);
        BufferedImage blurredPart = op.filter(subImage, null);

        // Create label with blurred background as icon
        JLabel label = new JLabel(text, SwingConstants.CENTER) {
            @Override
            protected void paintComponent(Graphics g) {
                // Draw blurred background first
                g.drawImage(blurredPart, 0, 0, null);
                // Draw text above it
                g.setFont(new Font("Arial", Font.BOLD, 28));
                g.setColor(Color.WHITE);
                FontMetrics fm = g.getFontMetrics();
                int x = (getWidth() - fm.stringWidth(text)) / 2;
                int y = ((getHeight() - fm.getHeight()) / 2) + fm.getAscent();
                g.drawString(text, x, y);
            }
        };

        label.setBounds(area);
        return label;
    }
}
