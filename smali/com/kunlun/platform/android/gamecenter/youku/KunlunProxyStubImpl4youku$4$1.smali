.class final Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kP:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;Landroid/app/Activity;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->kP:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$price:I

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$appRate:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->kP:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;)Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$price:I

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$appRate:I

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->kP:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;)Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    move-result-object v5

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->e(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
