.class public Lorg/apache/kerberos/kdc/KerberosService;
.super Ljava/lang/Object;
.source "KerberosService.java"


# instance fields
.field private checksumEngines:Ljava/util/Map;

.field protected config:Lorg/apache/kerberos/kdc/KdcConfiguration;

.field private replayCache:Lorg/apache/kerberos/kdc/replay/ReplayCache;

.field protected store:Lorg/apache/kerberos/store/PrincipalStore;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/kdc/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;

    invoke-direct {v0}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/kdc/KerberosService;->replayCache:Lorg/apache/kerberos/kdc/replay/ReplayCache;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/kdc/KerberosService;->checksumEngines:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lorg/apache/kerberos/kdc/KerberosService;->config:Lorg/apache/kerberos/kdc/KdcConfiguration;

    .line 65
    iput-object p2, p0, Lorg/apache/kerberos/kdc/KerberosService;->store:Lorg/apache/kerberos/store/PrincipalStore;

    .line 67
    sget-object p1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->CRC32:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    new-instance p2, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;

    invoke-direct {p2}, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lorg/apache/kerberos/kdc/KerberosService;->checksumEngines:Ljava/util/Map;

    sget-object p2, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD4:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    new-instance v0, Lorg/apache/kerberos/crypto/checksum/RsaMd4Checksum;

    invoke-direct {v0}, Lorg/apache/kerberos/crypto/checksum/RsaMd4Checksum;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lorg/apache/kerberos/kdc/KerberosService;->checksumEngines:Ljava/util/Map;

    sget-object p2, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    new-instance v0, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;

    invoke-direct {v0}, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lorg/apache/kerberos/kdc/KerberosService;->checksumEngines:Ljava/util/Map;

    sget-object p2, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->SHA1:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    new-instance v0, Lorg/apache/kerberos/crypto/checksum/Sha1Checksum;

    invoke-direct {v0}, Lorg/apache/kerberos/crypto/checksum/Sha1Checksum;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected echoTicket(Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 1

    .line 240
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    .line 241
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 242
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    .line 243
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 244
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 245
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V

    .line 246
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 247
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    .line 248
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getTransitedEncoding()Lorg/apache/kerberos/messages/value/TransitedEncoding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setTransitedEncoding(Lorg/apache/kerberos/messages/value/TransitedEncoding;)V

    return-void
.end method

.method protected getBestEncryptionType([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KerberosService;->config:Lorg/apache/kerberos/kdc/KdcConfiguration;

    invoke-virtual {v0}, Lorg/apache/kerberos/kdc/KdcConfiguration;->getEncryptionTypes()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 94
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 96
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 98
    aget-object v4, p1, v2

    aget-object v5, v0, v3

    if-ne v4, v5, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_ETYPE_NOSUPP:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1
.end method

.method public getKeyForPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KerberosService;->store:Lorg/apache/kerberos/store/PrincipalStore;

    invoke-interface {v0, p1}, Lorg/apache/kerberos/store/PrincipalStore;->getEntry(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/store/PrincipalStoreEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getEncryptionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected verifyAuthHeader(Lorg/apache/kerberos/messages/ApplicationRequest;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/components/Authenticator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getProtocolVersionNumber()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 127
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object v0

    sget-object v2, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REQ:Lorg/apache/kerberos/messages/MessageType;

    if-ne v0, v2, :cond_9

    .line 132
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getTicket()Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Ticket;->getTicketVersionNumber()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 137
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getTicket()Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/kerberos/kdc/KerberosService;->getKeyForPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    .line 163
    :try_start_0
    invoke-static {v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v1

    .line 165
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B

    move-result-object v0

    .line 167
    new-instance v1, Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;

    invoke-direct {v1}, Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;->decode([B)Lorg/apache/kerberos/messages/components/EncTicketPart;

    move-result-object v0

    .line 169
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->setEncTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;)V
    :try_end_0
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v0

    .line 182
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ApplicationRequest;->getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B

    move-result-object v0

    .line 183
    new-instance v1, Lorg/apache/kerberos/io/decoder/AuthenticatorDecoder;

    invoke-direct {v1}, Lorg/apache/kerberos/io/decoder/AuthenticatorDecoder;-><init>()V

    .line 184
    invoke-virtual {v1, v0}, Lorg/apache/kerberos/io/decoder/AuthenticatorDecoder;->decode([B)Lorg/apache/kerberos/messages/components/Authenticator;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    .line 208
    iget-object v1, p0, Lorg/apache/kerberos/kdc/KerberosService;->replayCache:Lorg/apache/kerberos/kdc/replay/ReplayCache;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/kerberos/kdc/replay/ReplayCache;->isReplay(Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 213
    iget-object v1, p0, Lorg/apache/kerberos/kdc/KerberosService;->replayCache:Lorg/apache/kerberos/kdc/replay/ReplayCache;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/kerberos/kdc/replay/ReplayCache;->save(Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 215
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/kerberos/kdc/KerberosService;->config:Lorg/apache/kerberos/kdc/KdcConfiguration;

    invoke-virtual {v2}, Lorg/apache/kerberos/kdc/KdcConfiguration;->getClockSkew()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/kerberos/messages/value/KerberosTime;->isInClockSkew(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/kerberos/kdc/KerberosService;->config:Lorg/apache/kerberos/kdc/KdcConfiguration;

    invoke-virtual {v2}, Lorg/apache/kerberos/kdc/KdcConfiguration;->getClockSkew()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/kerberos/messages/value/KerberosTime;->isInClockSkew(J)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p2

    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 233
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/ApplicationRequest;->setOption(I)V

    return-object v0

    .line 230
    :cond_2
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_TKT_EXPIRED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 224
    :cond_3
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_TKT_NYV:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 217
    :cond_4
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_SKEW:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 210
    :cond_5
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_REPEAT:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 193
    :cond_6
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BADMATCH:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 188
    :catch_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 173
    :catch_1
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 158
    :cond_7
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_NOKEY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 134
    :cond_8
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BADVERSION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 129
    :cond_9
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_MSG_TYPE:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 124
    :cond_a
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BADVERSION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1
.end method

.method protected verifyTicket(Lorg/apache/kerberos/messages/components/Ticket;Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/Ticket;->getRealm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/kerberos/kdc/KerberosService;->config:Lorg/apache/kerberos/kdc/KdcConfiguration;

    invoke-virtual {v1}, Lorg/apache/kerberos/kdc/KdcConfiguration;->getPrimaryRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/Ticket;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljavax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_NOT_US:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
