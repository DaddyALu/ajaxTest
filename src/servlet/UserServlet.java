package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //中文乱码问题
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数值，传参
        String uname = req.getParameter("uname");
        String flag = "flase!";
        if (uname!=null && uname.equals("zhangsan")){
            flag="true!";
            resp.getWriter().print(flag);  //往输出流写内容，ajax自动提取，匿名流对象自动关闭，如果不是匿名对象需要线flush清除缓存然后close关闭流
        }

    }
}
