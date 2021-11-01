.class final Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yy/gamesdk/common/RefreshEventManager$YYRefreshEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic kV:[I


# instance fields
.field private synthetic kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;)Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    return-object v0
.end method

.method private static synthetic bV()[I
    .locals 3

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kV:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->values()[Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_EXIT_GAME:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_INIT_FAILED:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_INIT_SUCCESS:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_LOGIN_CANCEL:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_LOGIN_SUCCESS:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_LOGOUT_SUCCESS:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_NO_INIT:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_PAY_CANCEL:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->YY_PAY_SUCCESS:Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;

    invoke-virtual {v1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kV:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final onYYRefreshed(Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->bV()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yy/gamesdk/common/RefreshEventManager$RefreshType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v1, "success"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v1, "init failed"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/yy/gamesdk/LoginInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/yy/gamesdk/LoginInfo;

    invoke-virtual {p2}, Lcom/yy/gamesdk/LoginInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yy/gamesdk/LoginInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yy/gamesdk/LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.debugMode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KunlunProxyStubImpl4yy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appid\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->b(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "time\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uid\":\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yy"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->c(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const-string v1, " login cancel"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->c(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->d(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "yy onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->d(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "yy onPayment cancel"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;->kU:Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->e(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
