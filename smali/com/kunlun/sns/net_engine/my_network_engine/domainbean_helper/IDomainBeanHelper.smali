.class public interface abstract Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;
.super Ljava/lang/Object;
.source "IDomainBeanHelper.java"


# virtual methods
.method public abstract getParseNetRequestBeanToDDStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
.end method

.method public abstract getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;
.end method
