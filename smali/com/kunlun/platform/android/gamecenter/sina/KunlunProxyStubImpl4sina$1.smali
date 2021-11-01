.class final Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/weibo/game/sdk/callback/SinaGameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$1;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/weibo/game/sdk/callback/SinaUser;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$1;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->a(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;Lcom/weibo/game/sdk/callback/SinaUser;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$1;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->a(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x67

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$1;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->a(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x68

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u9519\u8bef\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
