.class public interface abstract Lcom/kunlun/platform/android/Kunlun$GetServerListListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/Kunlun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetServerListListener"
.end annotation


# virtual methods
.method public abstract onComplete(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/platform/android/KunlunServerListEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
