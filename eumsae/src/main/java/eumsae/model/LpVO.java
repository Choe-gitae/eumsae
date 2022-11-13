package eumsae.model;

import lombok.Data;

@Data
public class LpVO {
	private String	classification;
	private String	genre;
	private String	title;
	private String	releaseDate;
	private String	singer;
	private String	region;
	private String	filter;
	private int		price;
}
