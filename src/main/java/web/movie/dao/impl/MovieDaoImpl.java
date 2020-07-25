package web.movie.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.MovieBean;
import com.web.store.model.Movie_Genre;

import web.movie.dao.MovieDao;

@Repository
public class MovieDaoImpl implements MovieDao {
	
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Movie_Genre> getGenreList() {
		String hql="FROM Movie_Genre";
		Session session=factory.getCurrentSession();
		List<Movie_Genre> list=session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void saveMovie(MovieBean movieBean) {
		movieBean.setMovieLength(movieBean.getMovieLength()+"分");
		Session session = factory.getCurrentSession();
		session.save(movieBean);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Integer, MovieBean> getMovie() {
		Map<Integer, MovieBean> map = new LinkedHashMap<>();
		String hql = "FROM MovieBean ORDER BY movieDate DESC";
		Session session = factory.getCurrentSession();
		List<MovieBean> list = session.createQuery(hql).getResultList();
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		for (MovieBean movie : list) {
			if (movie.getMovieDate() != null) {
				date = movie.getMovieDate();
				String movieDate = sdFormat.format(date);
				movie.setMovieDateString(movieDate);
			}
			map.put(movie.getMovieId(), movie);
		}
		return map;
	}

	@Override
	public MovieBean getMovieImg(Integer movieId) {
		Session session = factory.getCurrentSession();
		MovieBean bean = session.get(MovieBean.class,movieId);
		return bean;
	}

	@Override
	public void MovieDelete(Integer moviemId) {
		String hql = "DELETE MovieBean Where movieId = :movieId";
		Session session = factory.getCurrentSession();
		session.createQuery(hql).setParameter("movieId", moviemId).executeUpdate();

	}

	@Override
	public void MovieUpdata(MovieBean movieBean, long sizeInBytes) {
		movieBean.setMovieLength(movieBean.getMovieLength()+"分");
		if (sizeInBytes == -1) { // 不修改圖片
			MovieBean movie = null;
	        Session session = factory.getCurrentSession();
	        movie = session.get(MovieBean.class, movieBean.getMovieId());
	        movieBean.setMovieImg(movie.getMovieImg()); 
	        movieBean.setMovieFileName(movie.getMovieFileName());
	        session.evict(movie);
	        session.saveOrUpdate(movieBean);
        }else {
			 Session session = factory.getCurrentSession();
			 session.saveOrUpdate(movieBean);
		}
       
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MovieBean> MovieUpdateAjax(Integer moviemId) {
		Map<Integer, MovieBean> map = new LinkedHashMap<>();
		String hql = "FROM MovieBean WHERE movieId = :movieId";
		Session session = factory.getCurrentSession();
		List<MovieBean> list = session.createQuery(hql).setParameter("movieId", moviemId).getResultList();		
		return list;
	}

	

}
