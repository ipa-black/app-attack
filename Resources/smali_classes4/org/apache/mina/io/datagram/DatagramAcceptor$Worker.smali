.class Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;
.super Ljava/lang/Thread;
.source "DatagramAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/datagram/DatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V
    .locals 2

    .line 189
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DatagramAcceptor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$600(Lorg/apache/mina/io/datagram/DatagramAcceptor;)I

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

    .line 199
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$700(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    .line 201
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$800(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$700(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$900(Lorg/apache/mina/io/datagram/DatagramAcceptor;Ljava/util/Set;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1000(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V

    .line 209
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1100(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V

    .line 211
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$700(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$700(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1200(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1300(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1402(Lorg/apache/mina/io/datagram/DatagramAcceptor;Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;)Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;

    .line 220
    monitor-exit v0

    return-void

    .line 222
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

    .line 227
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->access$1500(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->this$0:Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 232
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
