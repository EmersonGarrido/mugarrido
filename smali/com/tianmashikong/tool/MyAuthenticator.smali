.class public Lcom/tianmashikong/tool/MyAuthenticator;
.super Ljavax/mail/Authenticator;
.source "MyAuthenticator.java"


# instance fields
.field password:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/tianmashikong/tool/MyAuthenticator;->userName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tianmashikong/tool/MyAuthenticator;->password:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/tianmashikong/tool/MyAuthenticator;->userName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tianmashikong/tool/MyAuthenticator;->password:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/tianmashikong/tool/MyAuthenticator;->userName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tianmashikong/tool/MyAuthenticator;->password:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcom/tianmashikong/tool/MyAuthenticator;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tianmashikong/tool/MyAuthenticator;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
