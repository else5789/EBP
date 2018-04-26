<%@ page contentType="image/jpeg" import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!

   Color getRandColor(int fc,int bc){
       Random r=new Random();
       if(fc>255) fc=255;
       if(bc>255) bc=255;
       int red=fc+r.nextInt(bc-fc);
       int green=fc+r.nextInt(bc-fc);
       int blue=fc+r.nextInt(bc-fc);
       return new Color(red,green,blue);
   }

 %>
 <%
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","No-cache");
    response.setHeader("Expires","0");


    Random r=new Random();

    int width=60,height=20;
    BufferedImage pic=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

    Graphics gc=pic.getGraphics();

    gc.setColor(getRandColor(200,250));
    gc.fillRect(0,0,width,height);

   gc.setFont(new Font("Times New Roman",Font.PLAIN,18));

   gc.setColor(getRandColor(160,200));
   for(int i=0;i<200;i++){
      int x1=r.nextInt(width);
      int x2=r.nextInt(height);
      int x3=r.nextInt(15);
      int x4=r.nextInt(15);
      gc.drawLine(x1,x2,x1+x3,x2+x4);
   }

      gc.setColor(getRandColor(120,240));
      for(int j=0;j<100;j++){
          int x=r.nextInt(width);
          int y=r.nextInt(height);
          gc.drawOval(x,y,0,0);
      }

      String rs="";
      String rn="";
      for(int k=0;k<4;k++){
         rn=String.valueOf(r.nextInt(10));
         rs+=rn;

         gc.setColor(new Color(20+r.nextInt(110),r.nextInt(110),20+r.nextInt(110)));
         gc.drawString(rn,13*k+6,16);

      }
      gc.dispose();

      session.setAttribute("random",rs);


      ImageIO.write(pic,"JPEG",response.getOutputStream());
      out.clear();
      out=pageContext.pushBody();
  %>
</body>
</html>