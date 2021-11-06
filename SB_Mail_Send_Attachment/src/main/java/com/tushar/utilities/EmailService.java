package com.tushar.utilities;

import java.io.File;
import java.util.Arrays;
import java.util.Date;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailService {
	
	@Autowired
	private JavaMailSender sender;
	
	@Value("spring.mail.username")
	private String fromMailId;
	
	public String sendMail_withAttachment(String[] toMails, String mailSubject , String mailBody, String fileName, String fileLocation)  {
		String resultMsg="NA";
		try {
		MimeMessage mailMsg = sender.createMimeMessage();
		MimeMessageHelper mailMsgComposer = new MimeMessageHelper(mailMsg, true);
		mailMsgComposer.setFrom(fromMailId);
		mailMsgComposer.setSubject(mailSubject);
		mailMsgComposer.setSentDate(new Date());
		mailMsgComposer.setTo(toMails);
		mailMsgComposer.setText(mailBody, true);
		mailMsgComposer.addAttachment(fileName, new File(fileLocation));
		sender.send(mailMsg);
		System.out.println(mailSubject+": sendMail_withAttachment()::mailsent "+Arrays.toString(toMails));
		resultMsg="MailSent";
		}catch(Exception e) {
			resultMsg="ErrSendMail";
			System.out.println("EmailService.sendMail_withAttachment(): "+e);
			e.printStackTrace();
		}
		return resultMsg;
	}

}
