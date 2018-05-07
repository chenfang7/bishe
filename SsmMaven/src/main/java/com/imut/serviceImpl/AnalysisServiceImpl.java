package com.imut.serviceImpl;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imut.dao.AnalysisMapper;
import com.imut.model.Analysis;
import com.imut.model.Answers;
import com.imut.model.Data;
import com.imut.model.Question;
import com.imut.service.AnalysisService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Service
public class AnalysisServiceImpl implements AnalysisService {
	@Autowired
	private AnalysisMapper analysisMapper;
	
	@Override
	public List<Analysis> getQuestionsAndAnswers(String qid) {
		List<Question> questions = analysisMapper.getQuestionsAndAnswers(qid);
		JSONArray jsonarr =new JSONArray(); 
		//一个问题
		for (Question question : questions) {
			JSONObject jsonobj =new JSONObject();
			jsonobj.put("qid", question.getQid()+"");
			System.out.println(question.getQid());
			jsonobj.put("tname", question.getTname());
			jsonobj.put("type", question.getType());
			//data
			JSONArray arr =new JSONArray();
			//一个问题的多个答案
			List<Answers> answers = question.getAnswers();
			for (Answers answer : answers) {
				//这个是一个人的答案
				JSONArray answerarr = JSONArray.fromObject(answer.getAresult());
				
				for (int i = 0; i < answerarr.size(); i++) {
					//是否有这个答案
					int flag=0;
					int j=0;
					for (j = 0; j < arr.size(); j++) {
						if(arr.getJSONObject(j).getString("answer").equals(answerarr.get(i))){
							//有这个答案
							 flag=1;
							 break;
						}
					}
					//这个答案存在
					if(flag==1){
						
							//存在则加1
							int sum =arr.getJSONObject(j).getInt("sum")+1;
							arr.getJSONObject(j).put("sum", sum);
						
					}else{
						//这个答案不存在
						JSONObject ofanswer =new JSONObject();
						//答案
						ofanswer.put("answer", answerarr.get(i));
						//小计
						ofanswer.put("sum", 1);
						//百分比
						ofanswer.put("percentage", "");
						
						arr.add(ofanswer);
					}
				}
				jsonobj.put("datas", arr);
				
			}
			jsonarr.add(jsonobj);
		}
		System.out.println(jsonarr.toString());
		Map classMap = new HashMap();
		classMap.put("datas",Data.class);
		List<Analysis> listA = JSONArray.toList(JSONArray.fromObject(jsonarr), Analysis.class, classMap);
		System.out.println(listA.toString());
		return listA;
	}
	//生成下载的问卷
	@Override
	public void download(String qid) throws IOException {
		Connection con = Jsoup.connect("http://127.0.0.1:8080/SsmMaven/goanalysis?qid="+qid);
		Document document = con.get();
		document.select("[href=css/amazeui.min.css]").remove();
		document.select("[href=/css/buttons.css]").remove();

		InputStream is = new ByteArrayInputStream(document.html().getBytes("UTF-8"));
		OutputStream os = new FileOutputStream("d:\\"+qid+".doc");  
		POIFSFileSystem fs = new POIFSFileSystem();  
	    //对应于org.apache.poi.hdf.extractor.WordDocument  
	    fs.createDocument(is, "WordDocument");  
	    fs.writeFilesystem(os);  
	    os.close();  
	    is.close();  
		
	}

}
