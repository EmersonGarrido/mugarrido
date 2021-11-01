.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kx:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->kx:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$price:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->kx:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;)Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$price:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;->val$orderId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
