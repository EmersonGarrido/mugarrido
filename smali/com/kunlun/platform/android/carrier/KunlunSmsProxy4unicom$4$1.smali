.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic dC:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;

.field private final synthetic dD:Ljava/lang/String;

.field private final synthetic dE:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dC:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->bN:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dD:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dE:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dC:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4;)Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->bN:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dD:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->dE:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method
