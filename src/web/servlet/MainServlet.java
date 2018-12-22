package web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarouselDao;
import dao.GoodDao;
import dao.GoodTypeDao;
import domain.Carousel;
import domain.Good;
import domain.GoodType;

/**
 * 作者 : 张不凡
 *  
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 加载所有商品类型列表
		GoodTypeDao typeDao = new GoodTypeDao();
		// 调用业务逻辑获得商品类型列表
		List<GoodType> listTypes = typeDao.loadAllGoodTypes();
		for(GoodType item:listTypes)
			System.out.println(item.getId()+"`````"+item.getTypeName());

		
		// 获得最新5条数据
		CarouselDao cdao = new CarouselDao();
		List<Carousel> listCarousel =  cdao.findNewCar(5);
		for(Carousel item:listCarousel)
			System.out.println(item.getTitle()+"`````"+item.getImgpath());
		
		
		String  typeid = request.getParameter("typeid");
		
		// 获得商品列表
		GoodDao goodDao = new GoodDao();
		List<Good> goods = null;
		if(typeid == null){
			 goods = goodDao.queryGoods();
		}else{
			goods = goodDao.queryGoodByType(Integer.parseInt(typeid));
		}
		
		// 通过请求转发把集合对象，共享到jsp页面进行显示
		request.setAttribute("types", listTypes);
		request.setAttribute("cs", listCarousel);
		request.setAttribute("goods", goods);

		request.getRequestDispatcher("main.jsp").forward(request, response);
		
	}
}
