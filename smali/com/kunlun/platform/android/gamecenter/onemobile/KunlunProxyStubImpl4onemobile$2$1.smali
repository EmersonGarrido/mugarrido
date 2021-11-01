.class final Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$activity:Landroid/app/Activity;

    const-string v1, "me.onemobile.sdk.CLIENT_ID"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "___"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$orderId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/onemobile/KunlunProxyStubImpl4onemobile$2$1;->val$price:I

    invoke-static {v1, v0, v2, v3}, Lme/onemobile/sdk/OneMobile;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
