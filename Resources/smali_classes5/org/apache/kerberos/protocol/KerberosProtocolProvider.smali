.class public Lorg/apache/kerberos/protocol/KerberosProtocolProvider;
.super Ljava/lang/Object;
.source "KerberosProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# static fields
.field private static CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

.field private static HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/kerberos/protocol/KerberosProtocolProvider$1;

    invoke-direct {v0}, Lorg/apache/kerberos/protocol/KerberosProtocolProvider$1;-><init>()V

    sput-object v0, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;

    invoke-direct {v0, p1, p2}, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    sput-object v0, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;->CODEC_FACTORY:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;->HANDLER:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method
