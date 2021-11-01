.class final Lcom/kunlun/platform/android/KunlunProxy$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bM:Lcom/kunlun/platform/android/KunlunSmsProxy;

.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunSmsProxy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bM:Lcom/kunlun/platform/android/KunlunSmsProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bN:Ljava/lang/String;

    iput p5, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$price:I

    iput-object p6, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bM:Lcom/kunlun/platform/android/KunlunSmsProxy;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bN:Ljava/lang/String;

    iget v4, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->val$price:I

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunProxy$15;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-virtual/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunSmsProxy;->smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method
