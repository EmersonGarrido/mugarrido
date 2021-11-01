.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
.super Ljava/lang/Object;
.source "FloatMenuItem.java"


# instance fields
.field methodName:Ljava/lang/String;

.field private picname:Ljava/lang/String;

.field private screen:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "picname"    # Ljava/lang/String;
    .param p4, "screen"    # I
    .param p5, "methodName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->title:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->url:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->picname:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->screen:I

    .line 15
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->methodName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->picname:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->screen:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->url:Ljava/lang/String;

    return-object v0
.end method
