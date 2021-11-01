.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;
.super Ljava/lang/Object;
.source "GetFeedInfoNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d741a61e2e1f22eL


# instance fields
.field private kunlun_fb_feed_caption:Ljava/lang/String;

.field private kunlun_fb_feed_description:Ljava/lang/String;

.field private kunlun_fb_feed_link:Ljava/lang/String;

.field private kunlun_fb_feed_name:Ljava/lang/String;

.field private kunlun_fb_feed_picture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "kunlun_fb_feed_name"    # Ljava/lang/String;
    .param p2, "kunlun_fb_feed_picture"    # Ljava/lang/String;
    .param p3, "kunlun_fb_feed_caption"    # Ljava/lang/String;
    .param p4, "kunlun_fb_feed_description"    # Ljava/lang/String;
    .param p5, "kunlun_fb_feed_link"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_picture:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_caption:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_description:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_link:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getKunlun_fb_feed_caption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_caption:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_feed_description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_description:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_feed_link()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_link:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_feed_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_name:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_feed_picture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->kunlun_fb_feed_picture:Ljava/lang/String;

    return-object v0
.end method
