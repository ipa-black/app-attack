.class public Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ObjectCreateRule.java"


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;->clazz:Ljava/lang/Class;

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;->setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 60
    :try_start_0
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/ObjectCreateRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 65
    new-instance p2, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
