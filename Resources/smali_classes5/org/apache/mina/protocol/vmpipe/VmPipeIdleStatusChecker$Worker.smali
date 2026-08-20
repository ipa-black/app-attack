.class Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;
.super Ljava/lang/Thread;
.source "VmPipeIdleStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;


# direct methods
.method private constructor <init>(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;->this$0:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    .line 44
    const-string p1, "VmPipeIdleStatusChecker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;->setDaemon(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;-><init>(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    iget-object v2, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;->this$0:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    invoke-static {v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->access$100(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 64
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;->this$0:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    invoke-static {v3}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->access$100(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 65
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    .line 68
    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v5

    .line 77
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    if-nez v6, :cond_3

    .line 79
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v5, v6}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v11

    .line 81
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    cmp-long v13, v11, v9

    if-lez v13, :cond_2

    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getLastIoTime()J

    move-result-wide v13

    sub-long v13, v0, v13

    cmp-long v11, v13, v11

    if-lez v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    invoke-virtual {v4, v6, v11}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 84
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v6

    sget-object v11, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v6, v4, v11}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    .line 90
    :cond_3
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 92
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v5, v6}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v11

    .line 94
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    cmp-long v13, v11, v9

    if-lez v13, :cond_4

    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getLastReadTime()J

    move-result-wide v13

    sub-long v13, v0, v13

    cmp-long v11, v13, v11

    if-lez v11, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    move v11, v8

    :goto_3
    invoke-virtual {v4, v6, v11}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 97
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 98
    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v6

    sget-object v11, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v6, v4, v11}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    .line 103
    :cond_5
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    sget-object v6, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v5, v6}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v5

    .line 107
    sget-object v11, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    cmp-long v9, v5, v9

    if-lez v9, :cond_6

    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getLastWriteTime()J

    move-result-wide v9

    sub-long v9, v0, v9

    cmp-long v5, v9, v5

    if-lez v5, :cond_6

    goto :goto_4

    :cond_6
    move v7, v8

    :goto_4
    invoke-virtual {v4, v11, v7}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 110
    sget-object v5, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v4, v5}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v5

    sget-object v6, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v5, v4, v6}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    goto/16 :goto_1

    .line 117
    :cond_7
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
