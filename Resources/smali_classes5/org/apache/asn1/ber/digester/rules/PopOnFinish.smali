.class public Lorg/apache/asn1/ber/digester/rules/PopOnFinish;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "PopOnFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 37
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 38
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method
