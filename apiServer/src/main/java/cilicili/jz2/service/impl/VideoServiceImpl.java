package cilicili.jz2.service.impl;

import cilicili.jz2.dao.VideoMapper;
import cilicili.jz2.pojo.Video;
import cilicili.jz2.pojo.VideoExample;
import cilicili.jz2.service.IVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("videoService")
public class VideoServiceImpl implements IVideoService {
	private final VideoMapper videoMapper;
	
	@Autowired
	public VideoServiceImpl(VideoMapper videoMapper) {
		this.videoMapper = videoMapper;
	}
	
	@Override
	public Video findVideoById(int id) {
		return videoMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public Video findVideoByUrl(String url) {
		VideoExample videoExample = new VideoExample();
		VideoExample.Criteria criteria = videoExample.createCriteria();
		criteria.andUrlEqualTo(url);
		List<Video> videoList = videoMapper.selectByExample(videoExample);
		if (videoList.size() == 0) {
			return null;
		} else {
			return videoList.get(0);
		}
	}
	
	@Override
	public void addVideo(Video video) {
		videoMapper.insert(video);
	}
	
	@Override
	public void updateVideo(Video video) {
		videoMapper.updateByPrimaryKeySelective(video);
	}
	
	@Override
	public List<Video> showVideos() {
		return videoMapper.selectByExample(new VideoExample());
	}
}
