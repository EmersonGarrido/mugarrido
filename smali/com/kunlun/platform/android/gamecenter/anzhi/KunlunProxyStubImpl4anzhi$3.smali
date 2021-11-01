.class final Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anzhi/usercenter/sdk/inter/InitSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initSdkCallcack()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
