.class final Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/login/sdk/LogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Z)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
