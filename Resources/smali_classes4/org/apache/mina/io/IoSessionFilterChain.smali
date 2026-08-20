.class public Lorg/apache/mina/io/IoSessionFilterChain;
.super Lorg/apache/mina/io/AbstractIoFilterChain;
.source "IoSessionFilterChain.java"


# instance fields
.field private final managerChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/mina/io/AbstractIoFilterChain;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/mina/io/IoSessionFilterChain;->managerChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/mina/io/IoSessionFilterChain;->managerChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method
