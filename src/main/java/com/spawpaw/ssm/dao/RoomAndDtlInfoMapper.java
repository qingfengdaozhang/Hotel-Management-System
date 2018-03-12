package com.spawpaw.ssm.dao;

import com.spawpaw.ssm.entity.RoomAndDtl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/1/9 0009.
 */
public interface RoomAndDtlInfoMapper {
    List<RoomAndDtl> selectRoomAndDtlById(@Param("id") int id);
}
