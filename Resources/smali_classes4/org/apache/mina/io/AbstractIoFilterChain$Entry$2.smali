.class Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;
.super Ljava/lang/Object;
.source "AbstractIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter$NextFilter;


# instance fields
.field private final synthetic this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

.field private final synthetic val$this$0:Lorg/apache/mina/io/AbstractIoFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    iput-object p2, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;->val$this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 0

    .line 566
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0

    .line 571
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 561
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$1300(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 550
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 555
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 545
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
