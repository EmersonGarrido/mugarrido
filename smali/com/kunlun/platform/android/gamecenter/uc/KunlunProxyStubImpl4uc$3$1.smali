.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
