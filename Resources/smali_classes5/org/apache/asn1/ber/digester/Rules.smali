.class public interface abstract Lorg/apache/asn1/ber/digester/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# virtual methods
.method public abstract add([ILorg/apache/asn1/ber/digester/Rule;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getDigester()Lorg/apache/asn1/ber/digester/BERDigester;
.end method

.method public abstract match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;
.end method

.method public abstract match([I)Ljava/util/List;
.end method

.method public abstract rules()Ljava/util/List;
.end method

.method public abstract setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V
.end method
