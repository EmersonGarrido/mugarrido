.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic dt:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;

.field private final synthetic du:Z

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->dt:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->du:Z

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->bN:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->val$orderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->dt:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;)Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->du:Z

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->bN:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method
