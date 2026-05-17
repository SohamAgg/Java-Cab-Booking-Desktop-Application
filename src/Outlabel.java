
import java.awt.*;
import java.awt.font.*;
import java.awt.geom.AffineTransform;
import javax.swing.*;

class Outlabel extends JLabel {
    private Color outlineColor = Color.BLACK;
    private float strokeWidth = 4f;

    public Outlabel(float s) {
        super();
        this.strokeWidth = s;
    }

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g.create();
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        FontRenderContext frc = g2.getFontRenderContext();
        TextLayout layout = new TextLayout(getText(), getFont(), frc);
        Shape outline = layout.getOutline(new AffineTransform());

        Rectangle bounds = outline.getBounds();
        int x = (getWidth() - bounds.width) / 2 - bounds.x;
        int y = (getHeight() + bounds.height) / 2;

        g2.translate(x, y);

        // Outline
        g2.setColor(outlineColor);
        g2.setStroke(new BasicStroke(strokeWidth));
        g2.draw(outline);

        // Fill text
        g2.setColor(getForeground());
        g2.fill(outline);

        g2.dispose();
    }
}
