package com.muabannhadat.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "POSTNEW")
public class PostNewsEntity {
//	post_news(id,title,date_submitted,expiration_date,messager_type,id_package,id_post_detail,status).

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String title;

	@ManyToOne
	@JoinColumn(name = "type_id")
	private PackageTypeEntity type;

	private Date start_day;

	private Date end_day;
	@Transient
	private double priceFrom;
	@Transient
	private double priceTo;

	public PostNewsEntity(long id) {
		super();
		this.id = id;
	}

	public PostNewsEntity() {
		super();
	}

	@ManyToOne
	@JoinColumn(name = "news_id")
	private NewsTypeEntity news;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	private PostDetailEntity detail;

	private String status;

	@OneToMany(mappedBy = "post")
	private List<NewsPostedEntity> posted;

	@OneToMany(mappedBy = "post")
	private List<CommentEntity> comment;

	@OneToMany(mappedBy = "post")
	private List<FeedbackEntity> feedback;

	@JoinColumn(name = "user_id")
	@ManyToOne
	private UsersEntity user;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public PackageTypeEntity getType() {
		return type;
	}

	public void setType(PackageTypeEntity type) {
		this.type = type;
	}

	public Date getStart_day() {
		return start_day;
	}

	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}

	public Date getEnd_day() {
		return end_day;
	}

	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}

	public NewsTypeEntity getNews() {
		return news;
	}

	public void setNews(NewsTypeEntity news) {
		this.news = news;
	}

	public PostDetailEntity getDetail() {
		return detail;
	}

	public void setDetail(PostDetailEntity detail) {
		this.detail = detail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<NewsPostedEntity> getPosted() {
		return posted;
	}

	public void setPosted(List<NewsPostedEntity> posted) {
		this.posted = posted;
	}

	public List<CommentEntity> getComment() {
		return comment;
	}

	public void setComment(List<CommentEntity> comment) {
		this.comment = comment;
	}

	public List<FeedbackEntity> getFeedback() {
		return feedback;
	}

	public void setFeedback(List<FeedbackEntity> feedback) {
		this.feedback = feedback;
	}

	public UsersEntity getUser() {
		return user;
	}

	public void setUser(UsersEntity user) {
		this.user = user;
	}

	public double getPriceFrom() {
		return priceFrom;
	}

	public void setPriceFrom(double priceFrom) {
		this.priceFrom = priceFrom;
	}

	public double getPriceTo() {
		return priceTo;
	}

	public void setPriceTo(double priceTo) {
		this.priceTo = priceTo;
	}
	

	

}
