package com.imut.test;

import java.io.FileInputStream;
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.InputStream;  
import java.io.OutputStream;  
  
import org.apache.poi.poifs.filesystem.DirectoryEntry;  
import org.apache.poi.poifs.filesystem.POIFSFileSystem;  
  
/** 
 * HTML 转换 Word 
 * @author LGF 2015-01-04 
 * 
 */  
public class T {  
    public static void main(String[] args) throws Exception {  
        //创建 POIFSFileSystem 对象  
        POIFSFileSystem poifs = new POIFSFileSystem();    
        //获取DirectoryEntry  
        DirectoryEntry directory = poifs.getRoot();    
        //创建输出流  
        OutputStream out = new FileOutputStream("C:\\Users\\ziang\\Desktop\\ss.doc");  
        InputStream in = new FileInputStream("C:\\Users\\ziang\\Desktop\\ss.html");  
        try {  
            //创建文档,1.格式,2.HTML文件输入流  
            directory.createDocument("WordDocument", in);  
            //写入  
            poifs.writeFilesystem(out);  
            //释放资源  
            out.close();  
            System.out.println("success");  
        } catch (IOException e) {  
            e.printStackTrace();  
        }    
    }  
      
    /** 
     * 获取 class path 中的文件流 
     * @param name 名称 
     * @return InputStream  
     */  
    public static InputStream getInputStream(String name){  
        return Thread.currentThread().getContextClassLoader().getResourceAsStream(name);  
    }  
}  