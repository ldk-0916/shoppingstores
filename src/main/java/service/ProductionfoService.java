package service;

import entity.Productinfo;
import org.eclipse.core.internal.runtime.Product;

import java.util.List;

public interface ProductionfoService {
    List<String> selectAllP_type();
    List<Productinfo> selectAllProductsByP_type(java.lang.String p_type);;
    int deleteByPrimaryKey(Integer pId);

    int insert(Productinfo record);

    int insertSelective(Productinfo record);

    Productinfo selectByPrimaryKey(Integer pId);

    int updateByPrimaryKeySelective(Productinfo record);

    int updateByPrimaryKey(Productinfo record);
}
