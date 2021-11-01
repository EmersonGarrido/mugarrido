.class Lcom/tianmashikong/sdk/UMengManager$2$1;
.super Ljava/lang/Object;
.source "UMengManager.java"

# interfaces
.implements Lcom/umeng/fb/model/Conversation$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/sdk/UMengManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tianmashikong/sdk/UMengManager$2;


# direct methods
.method constructor <init>(Lcom/tianmashikong/sdk/UMengManager$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/sdk/UMengManager$2$1;->this$1:Lcom/tianmashikong/sdk/UMengManager$2;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDevReply(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/DevReply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    return-void
.end method

.method public onSendUserReply(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    return-void
.end method
