.class Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;
.super Ljava/lang/Object;
.source "DatagramAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/datagram/DatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationRequest"
.end annotation


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private done:Z

.field private exception:Ljava/lang/Throwable;

.field private final handler:Lorg/apache/mina/io/IoHandler;


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->address:Ljava/net/SocketAddress;

    .line 526
    iput-object p2, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/datagram/DatagramAcceptor$1;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;-><init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->done:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Z)Z
    .locals 0

    .line 513
    iput-boolean p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->done:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;
    .locals 0

    .line 513
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;
    .locals 0

    .line 513
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->address:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;
    .locals 0

    .line 513
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 513
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->exception:Ljava/lang/Throwable;

    return-object p1
.end method
