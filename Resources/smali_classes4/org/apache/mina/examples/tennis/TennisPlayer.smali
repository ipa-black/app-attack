.class public Lorg/apache/mina/examples/tennis/TennisPlayer;
.super Ljava/lang/Object;
.source "TennisPlayer.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;
    }
.end annotation


# instance fields
.field private final HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;-><init>(Lorg/apache/mina/examples/tennis/TennisPlayer$1;)V

    iput-object v0, p0, Lorg/apache/mina/examples/tennis/TennisPlayer;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/apache/mina/examples/tennis/TennisPlayer;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method
