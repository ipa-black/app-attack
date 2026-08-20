.class Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;
.super Ljava/lang/Object;
.source "AbstractProtocolFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;


# instance fields
.field private final synthetic this$1:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

.field private final synthetic val$this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;->this$1:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;->val$this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 560
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 575
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;->this$1:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;->this$1:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->access$600(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain;->access$1300(Lorg/apache/mina/protocol/AbstractProtocolFilterChain;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 565
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 570
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 549
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 554
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 544
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
