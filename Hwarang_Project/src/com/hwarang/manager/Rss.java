package com.hwarang.manager;
/*
 *	<rss>
 * 		<channel>
 * 	</rss>
 * 
 * 	LomBok ==> private 변수를 설정을 하면
 * 	getter, setter를 만들어줌
 */

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Rss {
	private Channel channel=new Channel();

	public Channel getChannel() {
		return channel;
	}
	@XmlElement
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
}
