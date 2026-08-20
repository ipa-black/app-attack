.class Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;
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

    .line 534
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    iput-object p2, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->val$this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$1100(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$1200(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 518
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$1000(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0

    .line 536
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$800(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$900(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 499
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;->this$1:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->access$700(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
