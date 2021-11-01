.class public final Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;
.super Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;
.source "NetWorkRequestBeanAndStrategyMappingForFacebookCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogDomainBeanHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
