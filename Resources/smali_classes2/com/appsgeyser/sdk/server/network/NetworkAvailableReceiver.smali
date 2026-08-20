.class public Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAvailableReceiver.java"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;
    .locals 5

    const-class v0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;-><init>()V

    .line 28
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/4 v3, 0x2

    .line 30
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyAllListeners(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 46
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->networkIsUp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 51
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->networkIsDown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
    .locals 2

    .line 69
    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->notifyAllListeners(Landroid/content/Context;)V

    return-void
.end method

.method public removeListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
