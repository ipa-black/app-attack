.class public abstract Lorg/apache/asn1/ber/digester/AbstractRule;
.super Ljava/lang/Object;
.source "AbstractRule.java"

# interfaces
.implements Lorg/apache/asn1/ber/digester/Rule;


# instance fields
.field private digester:Lorg/apache/asn1/ber/digester/BERDigester;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/AbstractRule;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public getDigester()Lorg/apache/asn1/ber/digester/BERDigester;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/AbstractRule;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-object v0
.end method

.method public length(I)V
    .locals 0

    return-void
.end method

.method public setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/AbstractRule;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method
