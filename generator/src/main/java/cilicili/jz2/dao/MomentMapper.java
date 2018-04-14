package cilicili.jz2.dao;

import cilicili.jz2.pojo.Moment;
import cilicili.jz2.pojo.MomentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MomentMapper {
    long countByExample(MomentExample example);

    int deleteByExample(MomentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Moment record);

    int insertSelective(Moment record);

    List<Moment> selectByExample(MomentExample example);

    Moment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Moment record, @Param("example") MomentExample example);

    int updateByExample(@Param("record") Moment record, @Param("example") MomentExample example);

    int updateByPrimaryKeySelective(Moment record);

    int updateByPrimaryKey(Moment record);
}