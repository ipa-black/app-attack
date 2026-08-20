.class public Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;
.super Ljava/lang/Object;
.source "ReverseProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# static fields
.field private static CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

.field private static HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/mina/examples/reverser/ReverseProtocolHandler;

    invoke-direct {v0}, Lorg/apache/mina/examples/reverser/ReverseProtocolHandler;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    .line 40
    new-instance v0, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider$1;

    invoke-direct {v0}, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider$1;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method
