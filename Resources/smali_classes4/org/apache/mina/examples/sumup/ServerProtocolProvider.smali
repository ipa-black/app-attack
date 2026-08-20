.class public Lorg/apache/mina/examples/sumup/ServerProtocolProvider;
.super Ljava/lang/Object;
.source "ServerProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# static fields
.field private static final CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

.field private static final HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider$1;

    invoke-direct {v0}, Lorg/apache/mina/examples/sumup/ServerProtocolProvider$1;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    .line 39
    new-instance v0, Lorg/apache/mina/examples/sumup/ServerSessionHandler;

    invoke-direct {v0}, Lorg/apache/mina/examples/sumup/ServerSessionHandler;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method
