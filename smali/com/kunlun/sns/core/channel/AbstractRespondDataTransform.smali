.class public abstract Lcom/kunlun/sns/core/channel/AbstractRespondDataTransform;
.super Ljava/lang/Object;
.source "AbstractRespondDataTransform.java"

# interfaces
.implements Lcom/kunlun/sns/core/channel/IRespondDataTransformForJSON;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/core/channel/IRespondDataTransformForJSON;"
    }
.end annotation


# instance fields
.field protected respondBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/kunlun/sns/core/channel/AbstractRespondDataTransform;, "Lcom/kunlun/sns/core/channel/AbstractRespondDataTransform<TT;>;"
    .local p1, "respondBean":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/AbstractRespondDataTransform;->respondBean:Ljava/lang/Object;

    .line 9
    return-void
.end method
