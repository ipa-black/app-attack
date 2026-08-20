.class Lio/bidmachine/NetworkRegistry$1;
.super Ljava/lang/Thread;
.source "NetworkRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/NetworkRegistry;->initializeNetworks(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initializeCallback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$1;->val$initializeCallback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 178
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    .line 179
    new-instance v1, Lio/bidmachine/SimpleContextProvider;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    new-instance v2, Lio/bidmachine/InitializationParamsImpl;

    .line 180
    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/bidmachine/InitializationParamsImpl;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 182
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$1;->val$initializeCallback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;

    .line 179
    invoke-static {v1, v2, v0, v3}, Lio/bidmachine/NetworkRegistry;->access$000(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    return-void
.end method
