.class Lorg/apache/mina/io/socket/SocketAcceptor$Worker;
.super Ljava/lang/Thread;
.source "SocketAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/socket/SocketAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/socket/SocketAcceptor;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/socket/SocketAcceptor;)V
    .locals 2

    .line 216
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SocketAcceptor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$600(Lorg/apache/mina/io/socket/SocketAcceptor;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private processSessions(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 269
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 273
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 275
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;

    .line 282
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;

    .line 293
    new-instance v2, Lorg/apache/mina/io/socket/SocketSession;

    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1400(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$1500(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/mina/io/socket/SocketSession;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)V

    .line 294
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$1500(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/mina/io/IoHandler;->sessionCreated(Lorg/apache/mina/io/IoSession;)V

    .line 295
    invoke-static {}, Lorg/apache/mina/io/socket/SocketIoProcessor;->getInstance()Lorg/apache/mina/io/socket/SocketIoProcessor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->addSession(Lorg/apache/mina/io/socket/SocketSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 300
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v2}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1600(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-interface {v2, v3, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 308
    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$700(Lorg/apache/mina/io/socket/SocketAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    .line 228
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$800(Lorg/apache/mina/io/socket/SocketAcceptor;)V

    .line 229
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$900(Lorg/apache/mina/io/socket/SocketAcceptor;)V

    if-lez v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$700(Lorg/apache/mina/io/socket/SocketAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->processSessions(Ljava/util/Set;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$700(Lorg/apache/mina/io/socket/SocketAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$700(Lorg/apache/mina/io/socket/SocketAcceptor;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1000(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1100(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1202(Lorg/apache/mina/io/socket/SocketAcceptor;Lorg/apache/mina/io/socket/SocketAcceptor$Worker;)Lorg/apache/mina/io/socket/SocketAcceptor$Worker;

    .line 246
    monitor-exit v0

    return-void

    .line 248
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

    .line 253
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor;->access$1300(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->this$0:Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 257
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
