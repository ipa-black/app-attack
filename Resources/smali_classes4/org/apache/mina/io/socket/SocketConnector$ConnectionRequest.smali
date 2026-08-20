.class Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/socket/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final deadline:J

.field private done:Z

.field private exception:Ljava/lang/Throwable;

.field private final handler:Lorg/apache/mina/io/IoHandler;

.field private session:Lorg/apache/mina/io/socket/SocketSession;


# direct methods
.method private constructor <init>(Ljava/nio/channels/SocketChannel;ILorg/apache/mina/io/IoHandler;)V
    .locals 4

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->channel:Ljava/nio/channels/SocketChannel;

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p1, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->deadline:J

    .line 373
    iput-object p3, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/SocketChannel;ILorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/socket/SocketConnector$1;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;-><init>(Ljava/nio/channels/SocketChannel;ILorg/apache/mina/io/IoHandler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Z
    .locals 0

    .line 355
    iget-boolean p0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->done:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z
    .locals 0

    .line 355
    iput-boolean p1, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->done:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Ljava/lang/Throwable;
    .locals 0

    .line 355
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 355
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->exception:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/socket/SocketSession;
    .locals 0

    .line 355
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->session:Lorg/apache/mina/io/socket/SocketSession;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Lorg/apache/mina/io/socket/SocketSession;)Lorg/apache/mina/io/socket/SocketSession;
    .locals 0

    .line 355
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->session:Lorg/apache/mina/io/socket/SocketSession;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 355
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->channel:Ljava/nio/channels/SocketChannel;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/IoHandler;
    .locals 0

    .line 355
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->handler:Lorg/apache/mina/io/IoHandler;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)J
    .locals 2

    .line 355
    iget-wide v0, p0, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->deadline:J

    return-wide v0
.end method
