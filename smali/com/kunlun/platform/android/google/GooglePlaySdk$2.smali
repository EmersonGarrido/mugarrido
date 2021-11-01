.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

.field private synthetic lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "kunlun.GooglePlaySdk"

    const-string v1, "mServiceConn onServiceConnected"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/android/vending/billing/IInAppBillingService;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/android/vending/billing/IInAppBillingService;)V

    return-void
.end method
