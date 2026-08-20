.class Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;
.super Ljava/lang/Thread;
.source "SocketIoProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/socket/SocketIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/socket/SocketIoProcessor;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    .line 507
    const-string p1, "SocketIoProcessor"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :catch_0
    :cond_0
    :goto_0
    const-wide/16 v0, 0x3e8

    .line 516
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$000(Lorg/apache/mina/io/socket/SocketIoProcessor;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result v2

    .line 517
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$100(Lorg/apache/mina/io/socket/SocketIoProcessor;)V

    if-lez v2, :cond_1

    .line 521
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$000(Lorg/apache/mina/io/socket/SocketIoProcessor;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$200(Lorg/apache/mina/io/socket/SocketIoProcessor;Ljava/util/Set;)V

    .line 524
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$300(Lorg/apache/mina/io/socket/SocketIoProcessor;)V

    .line 525
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$400(Lorg/apache/mina/io/socket/SocketIoProcessor;)V

    .line 526
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$500(Lorg/apache/mina/io/socket/SocketIoProcessor;)V

    .line 528
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$000(Lorg/apache/mina/io/socket/SocketIoProcessor;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$000(Lorg/apache/mina/io/socket/SocketIoProcessor;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$600(Lorg/apache/mina/io/socket/SocketIoProcessor;)Lorg/apache/mina/util/Queue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketIoProcessor;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketIoProcessor;->access$702(Lorg/apache/mina/io/socket/SocketIoProcessor;Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;)Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;

    .line 536
    monitor-exit v2

    return-void

    .line 538
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v2

    .line 543
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 547
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
