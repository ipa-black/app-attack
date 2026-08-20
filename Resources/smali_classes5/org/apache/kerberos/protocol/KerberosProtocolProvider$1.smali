.class Lorg/apache/kerberos/protocol/KerberosProtocolProvider$1;
.super Ljava/lang/Object;
.source "KerberosProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolCodecFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/kerberos/protocol/KerberosDecoder;

    invoke-direct {v0}, Lorg/apache/kerberos/protocol/KerberosDecoder;-><init>()V

    return-object v0
.end method

.method public newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/kerberos/protocol/KerberosEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/protocol/KerberosEncoder;-><init>()V

    return-object v0
.end method
