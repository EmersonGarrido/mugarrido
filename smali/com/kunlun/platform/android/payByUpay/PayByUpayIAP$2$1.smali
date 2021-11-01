.class final Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ms:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->ms:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->ms:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;->a(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;)Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2$1;->val$orderId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->a(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
