.class final Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bluepay/interfaceClass/BlueInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/bluePay/BluePayIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic df:Ljava/lang/String;

.field private synthetic dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

.field private final synthetic dk:Ljava/lang/String;

.field private final synthetic dl:Ljava/lang/String;

.field private final synthetic dm:Ljava/lang/String;

.field private final synthetic dn:Ljava/lang/String;

.field private final synthetic do:Ljava/lang/String;

.field private final synthetic dp:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    iput-object p2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dk:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dl:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->df:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dm:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dn:Ljava/lang/String;

    iput-object p8, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->do:Ljava/lang/String;

    iput-object p9, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;)Lcom/kunlun/platform/android/bluePay/BluePayIAP;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    return-object v0
.end method


# virtual methods
.method public final initComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "200"

    if-ne p1, v0, :cond_0

    const-string v0, "com.kunlun.platform.android.bluePay.BluePay"

    const-string v1, "LOGIN_SUCCESS!"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "bluepay"

    new-instance v0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dk:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->df:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dm:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dn:Ljava/lang/String;

    iget-object v7, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->dp:Ljava/lang/String;

    iget-object v9, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->val$activity:Landroid/app/Activity;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;-><init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v10, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "404"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Network or ref File Errors!"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Network or ref File Errors!"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error!Description :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Error!Description :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method
