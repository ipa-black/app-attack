.class Lorg/apache/mina/protocol/io/IoAdapter;
.super Ljava/lang/Object;
.source "IoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "IoAdapter.ProtocolSession"


# instance fields
.field private final managerFilterChain:Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoAdapter;->managerFilterChain:Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/protocol/io/IoAdapter;)Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/apache/mina/protocol/io/IoAdapter;->managerFilterChain:Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    return-object p0
.end method


# virtual methods
.method public adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;-><init>(Lorg/apache/mina/protocol/io/IoAdapter;Lorg/apache/mina/protocol/ProtocolProvider;)V

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoAdapter;->managerFilterChain:Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    return-object v0
.end method

.method public toProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 2

    .line 80
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    .line 84
    invoke-static {v0, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->access$000(Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/io/IoProtocolSession;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not adapted from IoAdapter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
