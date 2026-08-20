.class public Lorg/apache/mina/protocol/codec/MessageDecoderResult;
.super Ljava/lang/Object;
.source "MessageDecoderResult.java"


# static fields
.field public static NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

.field public static NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

.field public static OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    const-string v1, "OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/codec/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    .line 48
    new-instance v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    const-string v1, "NEED_DATA"

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/codec/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    .line 55
    new-instance v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    const-string v1, "NOT_OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/codec/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->name:Ljava/lang/String;

    return-object v0
.end method
