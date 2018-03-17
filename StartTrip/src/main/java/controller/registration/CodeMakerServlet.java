package controller.registration;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CodeMakerServlet")
public class CodeMakerServlet extends HttpServlet {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
     
    //隨機生成
    //public static final String RANDOMCODEKEY = "RANDOMVALIDATECODEKEY";//放到session中的key  
    //private Random random = new Random();  
    //String randString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";//随机产生的字符串

    Random random = new Random();  
    //驗證碼字體
    private Font[] codeFont =
    {
        new Font("Times New Roman", Font.PLAIN,24), 
        new Font("Times New Roman", Font.PLAIN, 20),
        new Font("Times New Roman", Font.PLAIN,23),
        new Font("Times New Roman", Font.PLAIN, 22)
    };
    //驗證碼數字顏色
    private Color[] color =
    {
       Color.BLACK, Color.RED, Color.DARK_GRAY, Color.BLUE
    };
 
    String codeNumbers = "";
    
 
    int width = 60, height = 20;
 
    // 處理 HTTP get請求
    public void doGet(HttpServletRequest request, HttpServletResponse response)
                      throws ServletException, IOException
    {
        System.out.println("生成驗證碼");
        // 清空response
        response.reset();
 
        // 注意這裡的MIME類型
        response.setContentType("image/png");
 
        // 設置頁面不緩存
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        
 
        // 創建圖像:驗證碼顯示的圖片大小
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);
 
        // 獲取圖形上下文
        Graphics g = image.getGraphics();
         
        // 設置背景
        g.setColor(getRandColor(200,250));
        g.fillRect(0, 0, width, height);
 
        for (int i = 0; i < 4; i++)
        {
            drawCode(g, i);
        }
        //干擾線
        drawNoise(g, 10);
 
        // 邊框
        //g.setColor(Color.gray);
        //g.drawRect(0, 0, width - 1, height - 1);
 
        // 驗證碼內容存進session中，用於驗證用戶輸入比對是否正確時使用
        HttpSession session = request.getSession();
        session.removeAttribute("rand");
        session.setAttribute("rand", codeNumbers);
        
        
        // 重設字串
        codeNumbers = "";
        // 利用ImageIO類的write方法對圖像進行編碼
        ServletOutputStream sos = response.getOutputStream();
        ImageIO.write(image, "PNG", sos);
        sos.close();
    }
 
    // 繪製驗證碼
    public void drawCode(Graphics graphics, int i)
    {
        String number = String.valueOf(random.nextInt(10));
        graphics.setFont(codeFont[i]);
        graphics.setColor(color[i]);
        //匯制驗證碼到圖片X、Y
        graphics.drawString(number, 6 + i * 13,16);
 
        codeNumbers += number;
    }
 
    // 繪製干擾線
    public void drawNoise(Graphics graphics, int lineNumber)
    {
        graphics.setColor(getRandColor(160,200));
        for (int i = 0; i < lineNumber; i++)
        {
            int pointX1 = 1 + (int)(Math.random() * width);
            int pointY1 = 1 + (int)(Math.random() * height);
            int pointX2 = 1 + (int)(Math.random() * width);
            int pointY2 = 1 + (int)(Math.random() * height);
            graphics.drawLine(pointX1, pointY1, pointX2, pointY2);
        }
    }
    public Color getRandColor(int fc,int bc){//給定範圍獲得隨機顏色
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
    }
    
    // 處理 HTTP post 請求, 和doGet一樣
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        doGet(request, response);
    }
}
