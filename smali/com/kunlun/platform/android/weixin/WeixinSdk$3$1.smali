.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic I:Ljava/lang/String;

.field private final synthetic e:I

.field private synthetic na:Lcom/kunlun/platform/android/weixin/WeixinSdk$3;

.field private final synthetic nb:Lcom/kunlun/platform/android/KunlunEntity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk$3;ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->na:Lcom/kunlun/platform/android/weixin/WeixinSdk$3;

    iput p2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->e:I

    iput-object p3, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->I:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->nb:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->na:Lcom/kunlun/platform/android/weixin/WeixinSdk$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk$3;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    iget v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->e:I

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;->nb:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
