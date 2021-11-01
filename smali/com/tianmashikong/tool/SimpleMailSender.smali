.class public Lcom/tianmashikong/tool/SimpleMailSender;
.super Ljava/lang/Object;
.source "SimpleMailSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "psw"    # Ljava/lang/String;
    .param p2, "tomail"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/tianmashikong/tool/MailSenderInfo;

    invoke-direct {v0}, Lcom/tianmashikong/tool/MailSenderInfo;-><init>()V

    .line 25
    .local v0, "mailInfo":Lcom/tianmashikong/tool/MailSenderInfo;
    const-string v1, "smtp.exmail.qq.com"

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setMailServerHost(Ljava/lang/String;)V

    .line 26
    const-string v1, "25"

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setMailServerPort(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setValidate(Z)V

    .line 28
    invoke-virtual {v0, p0}, Lcom/tianmashikong/tool/MailSenderInfo;->setUserName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/tianmashikong/tool/MailSenderInfo;->setPassword(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p0}, Lcom/tianmashikong/tool/MailSenderInfo;->setFromAddress(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p2}, Lcom/tianmashikong/tool/MailSenderInfo;->setToAddress(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p3}, Lcom/tianmashikong/tool/MailSenderInfo;->setSubject(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p4}, Lcom/tianmashikong/tool/MailSenderInfo;->setContent(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/tianmashikong/tool/SimpleMailSender;->sendTextMail(Lcom/tianmashikong/tool/MailSenderInfo;)Ljava/lang/Boolean;

    .line 35
    return-void
.end method

.method public static sendHtmlMail(Lcom/tianmashikong/tool/MailSenderInfo;)Z
    .locals 11
    .param p0, "mailInfo"    # Lcom/tianmashikong/tool/MailSenderInfo;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 92
    .local v6, "pro":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->isValidate()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 94
    new-instance v0, Lcom/tianmashikong/tool/MyAuthenticator;

    .end local v0    # "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/tianmashikong/tool/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .restart local v0    # "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    :cond_0
    invoke-static {v6, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v7

    .line 100
    .local v7, "sendMailSession":Ljavax/mail/Session;
    :try_start_0
    new-instance v4, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v4, v7}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 102
    .local v4, "mailMessage":Ljavax/mail/Message;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "from":Ljavax/mail/Address;
    invoke-virtual {v4, v2}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 106
    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "to":Ljavax/mail/Address;
    sget-object v9, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v4, v9, v8}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 110
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 112
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v9}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 114
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 116
    .local v5, "mainPart":Ljavax/mail/Multipart;
    new-instance v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v3}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 118
    .local v3, "html":Ljavax/mail/BodyPart;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getContent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/html; charset=utf-8"

    invoke-virtual {v3, v9, v10}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 121
    invoke-virtual {v4, v5}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 123
    invoke-static {v4}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v9, 0x1

    .line 128
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v3    # "html":Ljavax/mail/BodyPart;
    .end local v4    # "mailMessage":Ljavax/mail/Message;
    .end local v5    # "mainPart":Ljavax/mail/Multipart;
    .end local v8    # "to":Ljavax/mail/Address;
    :goto_0
    return v9

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "ex":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 128
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static sendTextMail(Lcom/tianmashikong/tool/MailSenderInfo;)Ljava/lang/Boolean;
    .locals 10
    .param p0, "mailInfo"    # Lcom/tianmashikong/tool/MailSenderInfo;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getProperties()Ljava/util/Properties;

    move-result-object v5

    .line 46
    .local v5, "pro":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->isValidate()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    new-instance v0, Lcom/tianmashikong/tool/MyAuthenticator;

    .end local v0    # "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/tianmashikong/tool/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .restart local v0    # "authenticator":Lcom/tianmashikong/tool/MyAuthenticator;
    :cond_0
    invoke-static {v5, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v6

    .line 56
    .local v6, "sendMailSession":Ljavax/mail/Session;
    :try_start_0
    new-instance v4, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v4, v6}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 58
    .local v4, "mailMessage":Ljavax/mail/Message;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "from":Ljavax/mail/Address;
    invoke-virtual {v4, v2}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 62
    new-instance v7, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 63
    .local v7, "to":Ljavax/mail/Address;
    sget-object v8, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v4, v8, v7}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 65
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 67
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v8}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 69
    invoke-virtual {p0}, Lcom/tianmashikong/tool/MailSenderInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "mailContent":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljavax/mail/Message;->setText(Ljava/lang/String;)V

    .line 72
    invoke-static {v4}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 73
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 79
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v3    # "mailContent":Ljava/lang/String;
    .end local v4    # "mailMessage":Ljavax/mail/Message;
    .end local v7    # "to":Ljavax/mail/Address;
    :goto_0
    return-object v8

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ex":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 79
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0
.end method
