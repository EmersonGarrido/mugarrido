.class public Lcom/tianmashikong/tool/MailSenderInfo;
.super Ljava/lang/Object;
.source "MailSenderInfo.java"


# instance fields
.field private attachFileNames:[Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private fromAddress:Ljava/lang/String;

.field private mailServerHost:Ljava/lang/String;

.field private mailServerPort:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private toAddress:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "25"

    iput-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->validate:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getAttachFileNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->attachFileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 32
    .local v0, "p":Ljava/util/Properties;
    const-string v1, "mail.smtp.host"

    iget-object v2, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "mail.smtp.port"

    iget-object v2, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "mail.smtp.auth"

    iget-boolean v1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->validate:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0

    .line 34
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidate()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tianmashikong/tool/MailSenderInfo;->validate:Z

    return v0
.end method

.method public setAttachFileNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNames"    # [Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->attachFileNames:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->content:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setFromAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->fromAddress:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setMailServerHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailServerHost"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setMailServerPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailServerPort"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->password:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->subject:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setToAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "toAddress"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->toAddress:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->userName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setValidate(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/tianmashikong/tool/MailSenderInfo;->validate:Z

    .line 66
    return-void
.end method
