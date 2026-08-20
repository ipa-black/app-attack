.class Lorg/apache/mina/io/socket/SocketConnector$Worker;
.super Ljava/lang/Thread;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/socket/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/socket/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/socket/SocketConnector;)V
    .locals 2

    .line 305
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SocketConnector-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketConnector;->access$700(Lorg/apache/mina/io/socket/SocketConnector;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

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

    .line 315
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketConnector;->access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result v2

    .line 317
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$900(Lorg/apache/mina/io/socket/SocketConnector;)V

    if-lez v2, :cond_1

    .line 321
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketConnector;->access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$1000(Lorg/apache/mina/io/socket/SocketConnector;Ljava/util/Set;)V

    .line 324
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketConnector;->access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$1100(Lorg/apache/mina/io/socket/SocketConnector;Ljava/util/Set;)V

    .line 326
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketConnector;->access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$1200(Lorg/apache/mina/io/socket/SocketConnector;)Lorg/apache/mina/util/Queue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector;->access$1302(Lorg/apache/mina/io/socket/SocketConnector;Lorg/apache/mina/io/socket/SocketConnector$Worker;)Lorg/apache/mina/io/socket/SocketConnector$Worker;

    .line 334
    monitor-exit v2

    return-void

    .line 336
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

    .line 341
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector;->access$1400(Lorg/apache/mina/io/socket/SocketConnector;)Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/io/socket/SocketConnector$Worker;->this$0:Lorg/apache/mina/io/socket/SocketConnector;

    invoke-interface {v3, v4, v2}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 345
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
