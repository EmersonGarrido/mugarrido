.class final Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->onError(IILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lX:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$1;->lX:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$1;->lX:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;)Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->b(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V

    return-void
.end method
