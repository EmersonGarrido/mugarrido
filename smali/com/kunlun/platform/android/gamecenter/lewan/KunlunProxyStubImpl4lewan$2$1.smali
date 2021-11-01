.class final Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hM:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

.field private final synthetic hN:Ljava/util/HashMap;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;Ljava/util/HashMap;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->hM:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->hN:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->hM:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->hM:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->c(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;)Lcom/lewanduo/sdk/service/LwService;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->hN:Ljava/util/HashMap;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lewanduo/sdk/service/LwService;->goToYBALPay(Ljava/util/HashMap;Lcom/lewanduo/sdk/activity/ILewanPayCallBack;)V

    return-void
.end method
