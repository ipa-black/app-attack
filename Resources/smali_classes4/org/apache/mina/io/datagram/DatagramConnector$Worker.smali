.class Lorg/apache/mina/io/datagram/DatagramConnector$Worker;
.super Ljava/lang/Thread;
.source "DatagramConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/datagram/DatagramConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/datagram/DatagramConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/datagram/DatagramConnector;)V
    .locals 2

    .line 203
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DatagramAcceptor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$400(Lorg/apache/mina/io/datagram/DatagramConnector;)I

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
    .locals 3

    .line 213
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$500(Lorg/apache/mina/io/datagram/DatagramConnector;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    .line 215
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$600(Lorg/apache/mina/io/datagram/DatagramConnector;)V

    if-lez v0, :cond_1

    .line 219
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$500(Lorg/apache/mina/io/datagram/DatagramConnector;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$700(Lorg/apache/mina/io/datagram/DatagramConnector;Ljava/util/Set;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$800(Lorg/apache/mina/io/datagram/DatagramConnector;)V

    .line 223
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$900(Lorg/apache/mina/io/datagram/DatagramConnector;)V

    .line 225
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$500(Lorg/apache/mina/io/datagram/DatagramConnector;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$500(Lorg/apache/mina/io/datagram/DatagramConnector;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$1000(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$1100(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$1202(Lorg/apache/mina/io/datagram/DatagramConnector;Lorg/apache/mina/io/datagram/DatagramConnector$Worker;)Lorg/apache/mina/io/datagram/DatagramConnector$Worker;

    .line 234
    monitor-exit v0

    return-void

    .line 236
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 241
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->access$1300(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 246
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
