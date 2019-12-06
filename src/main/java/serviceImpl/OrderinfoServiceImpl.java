package serviceImpl;

import entity.Orderinfo;
import mapper.OrderinfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.OrderinfoService;
@Service
public class OrderinfoServiceImpl implements OrderinfoService {

    @Autowired
    OrderinfoMapper ofm;

    @Override
    public int deleteByPrimaryKey(Integer oId) {
        return ofm.deleteByPrimaryKey(oId);
    }

    @Override
    public int insert(Orderinfo record) {
        return ofm.insert(record);
    }

    @Override
    public int insertSelective(Orderinfo record) {
        return ofm.insertSelective(record);
    }

    @Override
    public Orderinfo selectByPrimaryKey(Integer oId) {
        return ofm.selectByPrimaryKey(oId);
    }

    @Override
    public int updateByPrimaryKeySelective(Orderinfo record) {
        return ofm.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Orderinfo record) {
        return ofm.updateByPrimaryKey(record);
    }
}
