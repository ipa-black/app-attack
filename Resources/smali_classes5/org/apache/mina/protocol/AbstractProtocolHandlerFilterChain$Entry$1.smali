.class Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;
.super Ljava/lang/Object;
.source "AbstractProtocolHandlerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;


# instance fields
.field private final synthetic this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

.field private final synthetic val$this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->val$this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$1000(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 535
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$1100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$1200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$800(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$900(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;->this$1:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->access$700(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
