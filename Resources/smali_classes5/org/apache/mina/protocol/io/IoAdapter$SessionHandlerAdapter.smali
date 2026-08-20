.class Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;
.super Ljava/lang/Object;
.source "IoAdapter.java"

# interfaces
.implements Lorg/apache/mina/io/IoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/io/IoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionHandlerAdapter"
.end annotation


# instance fields
.field final codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

.field final handler:Lorg/apache/mina/protocol/ProtocolHandler;

.field private final synthetic this$0:Lorg/apache/mina/protocol/io/IoAdapter;


# direct methods
.method public constructor <init>(Lorg/apache/mina/protocol/io/IoAdapter;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolProvider;->getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    .line 100
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolProvider;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p0

    return-object p0
.end method

.method private getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;
    .locals 2

    .line 213
    const-string v0, "IoAdapter.ProtocolSession"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/io/IoProtocolSession;

    if-nez v0, :cond_1

    .line 217
    monitor-enter p1

    .line 219
    :try_start_0
    const-string v0, "IoAdapter.ProtocolSession"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/io/IoProtocolSession;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lorg/apache/mina/protocol/io/IoProtocolSession;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v1}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/mina/protocol/io/IoProtocolSession;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;)V

    .line 225
    const-string v1, "IoAdapter.ProtocolSession"

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/io/IoSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    .line 130
    iget-object v0, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->decoder:Lorg/apache/mina/protocol/ProtocolDecoder;

    .line 133
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Lorg/apache/mina/protocol/ProtocolViolationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    :try_start_1
    iget-object v1, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->decOut:Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/mina/protocol/ProtocolDecoder;->decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)V

    .line 136
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    iget-object v0, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->decOut:Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;->getMessageQueue()Lorg/apache/mina/util/Queue;

    move-result-object v0

    .line 139
    monitor-enter v0
    :try_end_2
    .catch Lorg/apache/mina/protocol/ProtocolViolationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v1}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lorg/apache/mina/protocol/ProtocolViolationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v1

    .line 136
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Lorg/apache/mina/protocol/ProtocolViolationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    .line 158
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;->setBuffer(Lorg/apache/mina/common/ByteBuffer;)V

    .line 154
    iget-object p2, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {p2}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method doWrite(Lorg/apache/mina/io/IoSession;)V
    .locals 7

    .line 172
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object v0

    .line 173
    iget-object v1, v0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encoder:Lorg/apache/mina/protocol/ProtocolEncoder;

    .line 174
    iget-object v2, v0, Lorg/apache/mina/protocol/io/IoProtocolSession;->writeQueue:Lorg/apache/mina/util/Queue;

    .line 176
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 183
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 185
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 189
    monitor-exit v2

    goto :goto_3

    .line 191
    :cond_1
    iget-object v4, v0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encOut:Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;

    invoke-virtual {v4}, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->getBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v4

    .line 192
    iget-object v5, v0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encOut:Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;

    invoke-interface {v1, v0, v3, v5}, Lorg/apache/mina/protocol/ProtocolEncoder;->encode(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)V

    .line 195
    :goto_1
    invoke-virtual {v4}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/common/ByteBuffer;

    if-nez v5, :cond_2

    .line 202
    monitor-exit v2

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v4}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 200
    :goto_2
    invoke-interface {p1, v5, v6}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 207
    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v1}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/io/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->this$0:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-static {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->getProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
