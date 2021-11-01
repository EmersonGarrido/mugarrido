.class final Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anzhi/usercenter/sdk/inter/AnzhiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;)Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    return-object v0
.end method


# virtual methods
.method public final onCallback(Lcom/anzhi/usercenter/sdk/item/CPInfo;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xc8

    const-string v0, "KunlunProxyStubImpl4anzhi"

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "callback_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_login"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->e(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "code_desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "login_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    const-string v7, "uid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;Ljava/lang/String;)V

    if-ne v2, v8, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "appid\":\""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anzhi/usercenter/sdk/item/CPInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "uid\":\""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anzhi"

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->f(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v4, v5, v6}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->f(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v5

    new-instance v6, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;

    invoke-direct {v6, p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;-><init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;)V

    invoke-static {v4, v2, v3, v5, v6}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    :goto_0
    const-string v2, "key_pay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->g(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->g(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->h(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    const-string v0, "key_logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->g(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->g(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "user logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->f(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    const/16 v3, -0x65

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
