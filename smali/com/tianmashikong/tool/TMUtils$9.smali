.class Lcom/tianmashikong/tool/TMUtils$9;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->SendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$from:Ljava/lang/String;

.field private final synthetic val$psw:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$tomail:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$from:Ljava/lang/String;

    iput-object p2, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$psw:Ljava/lang/String;

    iput-object p3, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$tomail:Ljava/lang/String;

    iput-object p4, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$content:Ljava/lang/String;

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1282
    new-instance v0, Lcom/tianmashikong/tool/MailSenderInfo;

    invoke-direct {v0}, Lcom/tianmashikong/tool/MailSenderInfo;-><init>()V

    .line 1283
    .local v0, "mailInfo":Lcom/tianmashikong/tool/MailSenderInfo;
    const-string v1, "smtp.exmail.qq.com"

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setMailServerHost(Ljava/lang/String;)V

    .line 1284
    const-string v1, "25"

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setMailServerPort(Ljava/lang/String;)V

    .line 1285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setValidate(Z)V

    .line 1286
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setUserName(Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$psw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setPassword(Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setFromAddress(Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$tomail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setToAddress(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setSubject(Ljava/lang/String;)V

    .line 1291
    iget-object v1, p0, Lcom/tianmashikong/tool/TMUtils$9;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tianmashikong/tool/MailSenderInfo;->setContent(Ljava/lang/String;)V

    .line 1292
    invoke-static {v0}, Lcom/tianmashikong/tool/SimpleMailSender;->sendTextMail(Lcom/tianmashikong/tool/MailSenderInfo;)Ljava/lang/Boolean;

    .line 1293
    return-void
.end method
