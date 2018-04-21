package cilicili.jz2.controller;

import cilicili.jz2.pojo.Barrage;

import java.io.Serializable;
import java.util.Map;

public interface IBarrageController {
	Map<String, Serializable> showBarrages(Integer videoId);
	
	Map<String, Serializable> addBarrage(Barrage barrage, String token);
}
