.class Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;
.super Ljava/lang/Object;
.source "InMemoryReplayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/kerberos/replay/InMemoryReplayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplayCacheEntry"
.end annotation


# instance fields
.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private final synthetic this$0:Lorg/apache/kerberos/replay/InMemoryReplayCache;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/replay/InMemoryReplayCache;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->this$0:Lorg/apache/kerberos/replay/InMemoryReplayCache;

    .line 69
    iput-object p2, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 70
    iput-object p3, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v1, p1, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->equals(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object p1, p1, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0, p1}, Ljavax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public olderThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/kerberos/replay/InMemoryReplayCache$ReplayCacheEntry;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/value/KerberosTime;->greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result p1

    return p1
.end method
