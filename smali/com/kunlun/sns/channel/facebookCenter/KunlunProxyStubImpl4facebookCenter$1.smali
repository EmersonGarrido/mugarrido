.class Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;
.super Ljava/lang/Object;
.source "KunlunProxyStubImpl4facebookCenter.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$initCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;)V
    .locals 1
    .param p1, "retCode"    # I
    .param p2, "retObject"    # Ljava/lang/Object;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    .line 18
    return-void
.end method
