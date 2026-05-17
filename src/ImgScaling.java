
import java.awt.Image;
import java.awt.image.BufferedImage;

public class ImgScaling {
    public static BufferedImage scale(Image src, int w, int h) {
        BufferedImage img1 = new BufferedImage(
                src.getWidth(null),
                src.getHeight(null),
                BufferedImage.TYPE_INT_ARGB
        );
        BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        int ww = img1.getWidth();
        int hh = img1.getHeight();
        int[] ys = new int[h];
        for (int i = 0; i < h; i++) {
            ys[i] = i * hh / h;
        }
        for (int i = 0; i < w; i++) {
            int newX = i * ww / w;
            for (int j = 0; j < h; j++) {
                int col = img1.getRGB(newX, ys[j]);
                img.setRGB(i, j, col);
            }
        }
        return img;
    }
}
