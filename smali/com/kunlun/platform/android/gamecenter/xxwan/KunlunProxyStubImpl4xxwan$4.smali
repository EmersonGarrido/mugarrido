.class final Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFial(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xxwan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ,code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;I)V
    .locals 3

    check-cast p1, Lcn/xxwan/sdkall/frame/eneity/XXSdkQuitInfo;

    const-string v0, "KunlunProxyStubImpl4xxwan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p1, Lcn/xxwan/sdkall/frame/eneity/XXSdkQuitInfo;->which:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :cond_0
    return-void
.end method
