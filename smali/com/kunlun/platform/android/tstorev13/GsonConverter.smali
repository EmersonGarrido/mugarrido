.class public Lcom/kunlun/platform/android/tstorev13/GsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/tstorev13/Converter;


# instance fields
.field private final mM:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/tstorev13/GsonConverter;->mM:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/Response;
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/GsonConverter;->mM:Lcom/google/gson/Gson;

    const-class v1, Lcom/kunlun/platform/android/tstorev13/Response;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/tstorev13/Response;

    return-object v0
.end method
