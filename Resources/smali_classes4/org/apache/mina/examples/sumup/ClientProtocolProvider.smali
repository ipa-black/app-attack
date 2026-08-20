.class public Lorg/apache/mina/examples/sumup/ClientProtocolProvider;
.super Ljava/lang/Object;
.source "ClientProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# static fields
.field private static final CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;


# instance fields
.field private final handler:Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/apache/mina/examples/sumup/ClientProtocolProvider$1;

    invoke-direct {v0}, Lorg/apache/mina/examples/sumup/ClientProtocolProvider$1;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/examples/sumup/ClientSessionHandler;-><init>([I)V

    iput-object v0, p0, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method
