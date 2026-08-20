.class Lcom/google/firebase/iid/MessengerIpcClient$Connection;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/MessengerIpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final appMessenger:Landroid/os/Messenger;

.field gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

.field final requestsToBeSent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field final requestsWaitingForResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$0:Lcom/google/firebase/iid/MessengerIpcClient;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 3
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/firebase-iid/zze;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-iid/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->appMessenger:Landroid/os/Messenger;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient;Lcom/google/firebase/iid/MessengerIpcClient$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;-><init>(Lcom/google/firebase/iid/MessengerIpcClient;)V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueueRequest(Lcom/google/firebase/iid/MessengerIpcClient$Request;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->scheduleSendingRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return v1

    .line 11
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return v1

    .line 8
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->startConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method failAllPendingReqests(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    .line 77
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method declared-synchronized handleDisconnect(ILjava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_2

    .line 74
    monitor-exit p0

    return-void

    .line 75
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    iput v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 66
    :cond_4
    :try_start_2
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_5
    iput v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 69
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 70
    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->failAllPendingReqests(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 65
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic lambda$onServiceConnected$0$MessengerIpcClient$Connection(Landroid/os/IBinder;)V
    .locals 2

    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    :try_start_0
    const-string p1, "Null service connection"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 122
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

    invoke-direct {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x2

    .line 127
    :try_start_2
    iput p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 128
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->scheduleSendingRequests()V

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic lambda$onServiceDisconnected$3$MessengerIpcClient$Connection()V
    .locals 2

    const/4 v0, 0x2

    .line 103
    const-string v1, "Service disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$scheduleSendingRequests$1$MessengerIpcClient$Connection(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V
    .locals 0

    .line 117
    iget p1, p1, Lcom/google/firebase/iid/MessengerIpcClient$Request;->requestId:I

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->timeoutRequest(I)V

    return-void
.end method

.method final synthetic lambda$scheduleSendingRequests$2$MessengerIpcClient$Connection()V
    .locals 6

    .line 104
    :goto_0
    monitor-enter p0

    .line 105
    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V

    .line 109
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    .line 111
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 113
    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$5;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$5;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;Lcom/google/firebase/iid/MessengerIpcClient$Request;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->sendRequestOverMessenger(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const/4 p1, 0x2

    .line 44
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    const-string p1, "Service connected"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {p1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$2;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$2;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x2

    .line 58
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    const-string p1, "Service disconnected"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {p1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$4;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method receivedResponse(Landroid/os/Message;)Z
    .locals 4

    .line 31
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 32
    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "MessengerIpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received response to request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 37
    const-string p1, "MessengerIpcClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received response for unknown request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    monitor-exit p0

    return v2

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->handleResponse(Landroid/os/Bundle;)V

    return v2

    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method scheduleSendingRequests()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$3;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendRequestOverMessenger(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 50
    const-string v1, "MessengerIpcClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->appMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->createMessage(Landroid/content/Context;Landroid/os/Messenger;)Landroid/os/Message;

    move-result-object p1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method startConnection()V
    .locals 5

    .line 18
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const/4 v0, 0x2

    .line 19
    const-string v3, "MessengerIpcClient"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    const-string v0, "Starting bind to GmsCore"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    iput v2, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 25
    invoke-static {v4}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0, p0, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    const-string v0, "Unable to bind to service"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 29
    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$1;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method declared-synchronized timeoutConnection()V
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized timeoutRequest(I)V
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    if-eqz v0, :cond_0

    .line 98
    const-string v1, "MessengerIpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timing out request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    new-instance p1, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;

    const-string v1, "Timed out waiting for response"

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unbindIfFinished()V
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    .line 86
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    .line 90
    iput v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 91
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
