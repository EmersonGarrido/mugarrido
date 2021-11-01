.class public final Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;
.super Ljava/lang/Object;
.source "FacebookCenterUpdateRoleInfoRequestBean.java"


# instance fields
.field private roleInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "roleInfos":Ljava/util/Map;, "Ljava/util/Map<Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->roleInfos:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public getRoleInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->roleInfos:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->roleInfos:Ljava/util/Map;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookCenterUpdateRoleInfoRequestBean [roleInfos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->roleInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
