.class Lio/bidmachine/AdsType$2;
.super Ljava/lang/Object;
.source "AdsType.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdsType;->collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdsType;

.field final synthetic val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

.field final synthetic val$contextProvider:Lio/bidmachine/ContextProvider;

.field final synthetic val$networkAdUnits:Ljava/util/List;

.field final synthetic val$networkConfigList:Ljava/util/List;

.field final synthetic val$networksLoadingTimeOutSec:I

.field final synthetic val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

.field final synthetic val$placementList:Ljava/util/List;

.field final synthetic val$syncLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/List;Ljava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lio/bidmachine/AdsType$2;->this$0:Lio/bidmachine/AdsType;

    iput-object p2, p0, Lio/bidmachine/AdsType$2;->val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

    iput-object p3, p0, Lio/bidmachine/AdsType$2;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iput-object p4, p0, Lio/bidmachine/AdsType$2;->val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iput-object p5, p0, Lio/bidmachine/AdsType$2;->val$networkConfigList:Ljava/util/List;

    iput-object p6, p0, Lio/bidmachine/AdsType$2;->val$networkAdUnits:Ljava/util/List;

    iput p7, p0, Lio/bidmachine/AdsType$2;->val$networksLoadingTimeOutSec:I

    iput-object p8, p0, Lio/bidmachine/AdsType$2;->val$placementList:Ljava/util/List;

    iput-object p9, p0, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 156
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdsType$2;->val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

    iget-object v1, p0, Lio/bidmachine/AdsType$2;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/AdsType$2;->val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v3, p0, Lio/bidmachine/AdsType$2;->this$0:Lio/bidmachine/AdsType;

    iget-object v4, p0, Lio/bidmachine/AdsType$2;->val$networkConfigList:Ljava/util/List;

    iget-object v5, p0, Lio/bidmachine/AdsType$2;->val$networkAdUnits:Ljava/util/List;

    iget v6, p0, Lio/bidmachine/AdsType$2;->val$networksLoadingTimeOutSec:I

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/displays/PlacementBuilder;->createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lio/bidmachine/AdsType$2;->val$placementList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    iget-object v2, p0, Lio/bidmachine/AdsType$2;->val$placementList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iget-object v0, p0, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 164
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
