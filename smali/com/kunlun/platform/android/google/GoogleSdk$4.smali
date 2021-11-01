.class final Lcom/kunlun/platform/android/google/GoogleSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->login(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$4;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$4;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {v0, p2, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
