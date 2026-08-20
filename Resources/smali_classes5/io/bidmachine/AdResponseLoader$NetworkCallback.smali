.class Lio/bidmachine/AdResponseLoader$NetworkCallback;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;
.implements Lio/bidmachine/core/NetworkRequest$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        "Lio/bidmachine/utils/BMError;",
        ">;",
        "Lio/bidmachine/core/NetworkRequest$CancelCallback;"
    }
.end annotation


# instance fields
.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;

.field private final id:Ljava/lang/String;

.field private final isCleared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final networkAdUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final weakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdResponseLoader$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Ljava/util/List;Lio/bidmachine/AdResponseLoader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdRequestParameters;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdResponseLoader$Listener;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->id:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->url:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 105
    iput-object p4, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->networkAdUnitList:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->weakListener:Ljava/lang/ref/WeakReference;

    .line 107
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isCleared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdResponseLoader$NetworkCallback;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->cantSend()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/AdResponse;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->notifyNetworkAuctionResult(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/AdResponse;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->sendSuccess(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method static synthetic access$300(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->sendFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private cantSend()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isCleared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyNetworkAuctionResult(Lio/bidmachine/AdResponse;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getWinnerNetworkAdUnit()Lio/bidmachine/NetworkAdUnit;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 217
    iget-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->networkAdUnitList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/NetworkAdUnit;

    .line 219
    :try_start_0
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/NetworkAdapter;->onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    if-ne v1, p1, :cond_3

    .line 228
    :try_start_1
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/bidmachine/NetworkAdapter;->onWinAuction(Lio/bidmachine/NetworkAdUnit;)V

    goto :goto_2

    .line 230
    :cond_3
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/bidmachine/NetworkAdapter;->onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private prepareForSend()Lio/bidmachine/AdResponseLoader$Listener;
    .locals 2

    .line 173
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->cantSend()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdResponseLoader$Listener;

    return-object v0
.end method

.method private sendCancel()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->prepareForSend()Lio/bidmachine/AdResponseLoader$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lio/bidmachine/AdResponseLoader$Listener;->onCancel()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->clear()V

    return-void
.end method

.method private sendFail(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->prepareForSend()Lio/bidmachine/AdResponseLoader$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0, p1}, Lio/bidmachine/AdResponseLoader$Listener;->onFail(Lio/bidmachine/utils/BMError;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->clear()V

    return-void
.end method

.method private sendSuccess(Lio/bidmachine/AdResponse;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->prepareForSend()Lio/bidmachine/AdResponseLoader$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lio/bidmachine/AdResponseLoader$Listener;->onSuccess(Lio/bidmachine/AdResponse;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/AdResponseStatus;)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 163
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->isCleared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onCanceled()V
    .locals 2

    .line 156
    invoke-static {}, Lio/bidmachine/NetworkRequestManager;->get()Lio/bidmachine/NetworkRequestManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkRequestManager;->remove(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->notifyNetworkAuctionResult(Lio/bidmachine/AdResponse;)V

    .line 159
    invoke-direct {p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->sendCancel()V

    return-void
.end method

.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 143
    invoke-static {}, Lio/bidmachine/NetworkRequestManager;->get()Lio/bidmachine/NetworkRequestManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkRequestManager;->remove(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->notifyNetworkAuctionResult(Lio/bidmachine/AdResponse;)V

    .line 146
    invoke-static {}, Lio/bidmachine/AdResponseManager;->get()Lio/bidmachine/AdResponseManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0, v1}, Lio/bidmachine/AdResponseManager;->receive(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->sendSuccess(Lio/bidmachine/AdResponse;)V

    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->sendFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
    .locals 3

    .line 114
    invoke-static {}, Lio/bidmachine/NetworkRequestManager;->get()Lio/bidmachine/NetworkRequestManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkRequestManager;->remove(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 115
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->url:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromSuccessRequest(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback;->networkAdUnitList:Ljava/util/List;

    new-instance v2, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;

    invoke-direct {v2, p0}, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;-><init>(Lio/bidmachine/AdResponseLoader$NetworkCallback;)V

    invoke-static {v0, v1, p1, v2}, Lio/bidmachine/ProtoTransformer;->toAdResponse(Lio/bidmachine/AdRequestParameters;Ljava/util/List;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/ProtoTransformer$Listener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V

    return-void
.end method
