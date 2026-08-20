.class Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;
.super Ljava/lang/Object;
.source "DatagramAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/datagram/DatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancellationRequest"
.end annotation


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private done:Z

.field private exception:Ljava/lang/RuntimeException;


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->address:Ljava/net/SocketAddress;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/datagram/DatagramAcceptor$1;)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;-><init>(Ljava/net/SocketAddress;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/net/SocketAddress;
    .locals 0

    .line 530
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->address:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->done:Z

    return p0
.end method

.method static synthetic access$402(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Z)Z
    .locals 0

    .line 530
    iput-boolean p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->done:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;
    .locals 0

    .line 530
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->exception:Ljava/lang/RuntimeException;

    return-object p0
.end method

.method static synthetic access$502(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 0

    .line 530
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->exception:Ljava/lang/RuntimeException;

    return-object p1
.end method
