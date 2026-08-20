.class final Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;
.super Ljava/lang/Object;
.source "LdapProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolCodecFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/protocol/LdapProtocolProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtocolCodecFactoryImpl"
.end annotation


# instance fields
.field final env:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    const-string v1, "asn.1.berlib.provider"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;

    new-instance v1, Lorg/apache/ldap/common/message/MessageDecoder;

    iget-object v2, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/message/MessageDecoder;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;-><init>(Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V

    return-object v0

    .line 287
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;

    new-instance v1, Lorg/apache/ldap/common/message/MessageDecoder;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/MessageDecoder;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;-><init>(Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V

    return-object v0
.end method

.method public newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    const-string v1, "asn.1.berlib.provider"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;

    new-instance v1, Lorg/apache/ldap/common/message/MessageEncoder;

    iget-object v2, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;->env:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/message/MessageEncoder;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;-><init>(Lorg/apache/asn1/codec/stateful/StatefulEncoder;)V

    return-object v0

    .line 275
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;

    new-instance v1, Lorg/apache/ldap/common/message/MessageEncoder;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/MessageEncoder;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;-><init>(Lorg/apache/asn1/codec/stateful/StatefulEncoder;)V

    return-object v0
.end method
