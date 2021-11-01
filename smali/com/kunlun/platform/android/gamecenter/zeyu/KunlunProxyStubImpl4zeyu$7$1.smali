.class final Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zeyu/sdk/ZeyuSDKLogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7$1;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLogoutFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onLogoutSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7$1;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method
