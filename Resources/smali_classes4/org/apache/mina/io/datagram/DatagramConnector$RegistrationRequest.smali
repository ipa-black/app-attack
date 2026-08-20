.class Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;
.super Ljava/lang/Object;
.source "DatagramConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/datagram/DatagramConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationRequest"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/DatagramChannel;

.field private done:Z

.field private exception:Ljava/lang/Throwable;

.field private final handler:Lorg/apache/mina/io/IoHandler;

.field private session:Lorg/apache/mina/io/datagram/DatagramSession;


# direct methods
.method private constructor <init>(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->channel:Ljava/nio/channels/DatagramChannel;

    .line 511
    iput-object p2, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/datagram/DatagramConnector$1;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;-><init>(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Z
    .locals 0

    .line 495
    iget-boolean p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->done:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Z)Z
    .locals 0

    .line 495
    iput-boolean p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->done:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    .line 495
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->channel:Ljava/nio/channels/DatagramChannel;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;
    .locals 0

    .line 495
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;
    .locals 0

    .line 495
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->exception:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Lorg/apache/mina/io/datagram/DatagramSession;
    .locals 0

    .line 495
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->session:Lorg/apache/mina/io/datagram/DatagramSession;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Lorg/apache/mina/io/datagram/DatagramSession;)Lorg/apache/mina/io/datagram/DatagramSession;
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->session:Lorg/apache/mina/io/datagram/DatagramSession;

    return-object p1
.end method
