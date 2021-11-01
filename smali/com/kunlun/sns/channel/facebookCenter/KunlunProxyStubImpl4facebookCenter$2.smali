.class Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;
.super Ljava/lang/Object;
.source "KunlunProxyStubImpl4facebookCenter.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 8
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;
    .param p3, "kunlunEntity"    # Lcom/kunlun/platform/android/KunlunEntity;

    .prologue
    .line 27
    iget-object v7, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-object v1, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;Lcom/kunlun/platform/android/KunlunEntity;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
