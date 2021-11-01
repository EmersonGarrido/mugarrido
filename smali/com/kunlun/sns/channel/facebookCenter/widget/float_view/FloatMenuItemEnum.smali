.class public final enum Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;
.super Ljava/lang/Enum;
.source "FloatMenuItemEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

.field public static final enum getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;


# instance fields
.field private floatMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private hideItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    const-string v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private addFloatMenuItemEnum()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private hasInit()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->hideItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public clearFloatMenu()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void
.end method

.method public getFloatMenu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v6, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-direct {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>()V

    .line 53
    .local v6, "errorBeanOUT":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRequestBean;

    invoke-direct {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRequestBean;-><init>()V

    invoke-virtual {v0, v1, v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->synchronousRequestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;

    .line 55
    .local v8, "respondBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;
    if-nez v8, :cond_2

    .line 56
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u6309\u94ae\u83dc\u5355\u5931\u8d25\uff0c\u539f\u56e0\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->HIDE_BUTTON_TITLE:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "kunlun_fb_float_hide_button"

    const/4 v4, 0x1

    const-string v5, "onHideButtonLayoutClick"

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->hideItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 77
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->hideItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v8}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->getRetcode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    if-eq v0, v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->addFloatMenuItemEnum()V

    .line 67
    invoke-virtual {v8}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->isShowOnlyFb()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->HIDE:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->float_button_state:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    .line 72
    :cond_3
    invoke-virtual {v8}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->getExtButtons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 73
    .local v7, "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->floatMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
