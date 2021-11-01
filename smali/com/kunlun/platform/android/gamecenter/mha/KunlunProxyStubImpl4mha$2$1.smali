.class final Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic in:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;

.field private final synthetic io:Lcom/huanju/wanka/paysdk/ProductInfo;

.field private final synthetic ip:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;Landroid/app/Activity;Lcom/huanju/wanka/paysdk/ProductInfo;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->in:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->io:Lcom/huanju/wanka/paysdk/ProductInfo;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->ip:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->in:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;)Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->io:Lcom/huanju/wanka/paysdk/ProductInfo;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->ip:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Landroid/app/Activity;Lcom/huanju/wanka/paysdk/ProductInfo;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
