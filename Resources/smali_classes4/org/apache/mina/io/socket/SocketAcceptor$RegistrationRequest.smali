.class Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;
.super Ljava/lang/Object;
.source "SocketAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/socket/SocketAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationRequest"
.end annotation


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private final backlog:I

.field private done:Z

.field private exception:Ljava/io/IOException;

.field private final handler:Lorg/apache/mina/io/IoHandler;


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->address:Ljava/net/SocketAddress;

    .line 452
    iput p2, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->backlog:I

    .line 453
    iput-object p3, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/socket/SocketAcceptor$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;-><init>(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->done:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Z)Z
    .locals 0

    .line 437
    iput-boolean p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->done:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;
    .locals 0

    .line 437
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;
    .locals 0

    .line 437
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->address:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)I
    .locals 0

    .line 437
    iget p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->backlog:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;
    .locals 0

    .line 437
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->exception:Ljava/io/IOException;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->exception:Ljava/io/IOException;

    return-object p1
.end method
