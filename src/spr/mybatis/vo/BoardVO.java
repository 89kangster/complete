package spr.mybatis.vo;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	public String seq,	writer,	title,	content,	pwd,	hit,	groups,	step,	lev,	bname,	regdate,	
	
	
	ip,status,uploadFilenameFileName,path,modfile;
	
	
	
	public String getModfile() {
		return modfile;
	}
	public void setModfile(String modfile) {
		this.modfile = modfile;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUploadFilenameFileName() {
		return uploadFilenameFileName;
	}
	public void setUploadFilenameFileName(String uploadFilenameFileName) {
		this.uploadFilenameFileName = uploadFilenameFileName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public MultipartFile uploadFilename;
	
	
	
	public MultipartFile getUploadFilename() {
		return uploadFilename;
	}
	public void setUploadFilename(MultipartFile uploadFilename) {
		this.uploadFilename = uploadFilename;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getGroups() {
		return groups;
	}
	public void setGroups(String groups) {
		this.groups = groups;
	}
	public String getStep() {
		return step;
	}
	public void setStep(String step) {
		this.step = step;
	}
	public String getLev() {
		return lev;
	}
	public void setLev(String lev) {
		this.lev = lev;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	

}
