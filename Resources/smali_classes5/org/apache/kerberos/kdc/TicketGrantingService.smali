.class public Lorg/apache/kerberos/kdc/TicketGrantingService;
.super Lorg/apache/kerberos/service/KerberosService;
.source "TicketGrantingService.java"


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/kerberos/service/KerberosService;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    return-void
.end method

.method private encryptReplyPart(Lorg/apache/kerberos/messages/TicketGrantReply;Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 2

    .line 499
    new-instance v0, Lorg/apache/kerberos/io/encoder/EncTgsRepPartEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/EncTgsRepPartEncoder;-><init>()V

    .line 502
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/encoder/EncTgsRepPartEncoder;->encode(Lorg/apache/kerberos/messages/KdcReply;)[B

    move-result-object v0

    .line 503
    invoke-static {p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v1

    .line 505
    invoke-virtual {v1, p2, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getEncryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;[B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p2

    .line 507
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/TicketGrantReply;->setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private encryptTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 463
    new-instance v0, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;-><init>()V

    .line 466
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;->encode(Lorg/apache/kerberos/messages/components/EncTicketPart;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x1c

    .line 473
    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    .line 492
    invoke-static {p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object p3

    .line 494
    invoke-virtual {p3, p2, p1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getEncryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;[B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    return-object p1
.end method

.method private getAuthHeader(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/ApplicationRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getPreAuthData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v0

    sget-object v2, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_TGS_REQ:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    if-ne v0, v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getPreAuthData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object p1

    .line 114
    new-instance v0, Lorg/apache/kerberos/io/decoder/ApplicationRequestDecoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/decoder/ApplicationRequestDecoder;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/decoder/ApplicationRequestDecoder;->decode([B)Lorg/apache/kerberos/messages/ApplicationRequest;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_PADATA_TYPE_NOSUPP:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1
.end method

.method private getNewTicket(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/components/Authenticator;)Lorg/apache/kerberos/messages/components/Ticket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    .line 168
    new-instance v1, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;-><init>()V

    .line 170
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    .line 172
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/kerberos/kdc/TicketGrantingService;->processFlags(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/components/EncTicketPartModifier;)V

    .line 174
    invoke-virtual {v1, p3}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    .line 175
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 177
    invoke-direct {p0, p1, p4, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->processAuthorizationData(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Authenticator;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object p3

    .line 178
    invoke-virtual {v1, p3}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    .line 180
    invoke-direct {p0, v1, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->processTransited(Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 182
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->processTimes(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 184
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getServerKey(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object p2

    .line 186
    invoke-virtual {v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->getEncTicketPart()Lorg/apache/kerberos/messages/components/EncTicketPart;

    move-result-object p3

    .line 188
    invoke-direct {p0, p3, p2, p1}, Lorg/apache/kerberos/kdc/TicketGrantingService;->encryptTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    .line 190
    new-instance p2, Lorg/apache/kerberos/messages/components/Ticket;

    invoke-direct {p2, v0, p1}, Lorg/apache/kerberos/messages/components/Ticket;-><init>(Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V

    .line 191
    invoke-virtual {p2, p3}, Lorg/apache/kerberos/messages/components/Ticket;->setEncTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;)V

    return-object p2
.end method

.method private getReply(Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/TicketGrantReply;
    .locals 1

    .line 519
    new-instance v0, Lorg/apache/kerberos/messages/TicketGrantReply;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/TicketGrantReply;-><init>()V

    .line 520
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/Ticket;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 521
    invoke-virtual {v0, p2}, Lorg/apache/kerberos/messages/TicketGrantReply;->setTicket(Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 522
    invoke-virtual {v0, p3}, Lorg/apache/kerberos/messages/TicketGrantReply;->setKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    .line 523
    invoke-virtual {p4}, Lorg/apache/kerberos/messages/KdcRequest;->getNonce()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setNonce(I)V

    .line 525
    new-instance p1, Lorg/apache/kerberos/messages/value/LastRequest;

    invoke-direct {p1}, Lorg/apache/kerberos/messages/value/LastRequest;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setLastRequest(Lorg/apache/kerberos/messages/value/LastRequest;)V

    .line 526
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V

    .line 527
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    .line 528
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 529
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 530
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 531
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    const/16 p1, 0x8

    .line 533
    invoke-virtual {p2, p1}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/TicketGrantReply;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    :cond_0
    return-object v0
.end method

.method private processAuthorizationData(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Authenticator;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/value/AuthorizationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Authenticator;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Authenticator;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B

    move-result-object p1

    .line 421
    new-instance p2, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;

    invoke-direct {p2}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;-><init>()V

    .line 422
    invoke-virtual {p2, p1}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;->decode([B)Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object p2

    .line 434
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/value/AuthorizationData;->add(Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    goto :goto_0

    .line 430
    :catch_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 426
    :catch_1
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private processFlags(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/components/EncTicketPartModifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 209
    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p3, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 216
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    goto :goto_1

    .line 213
    :cond_2
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 220
    :cond_3
    :goto_1
    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p3, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    :cond_4
    const/4 v0, 0x3

    .line 225
    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    goto :goto_2

    .line 229
    :cond_5
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_6
    :goto_2
    const/4 v1, 0x4

    .line 235
    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    invoke-virtual {p3, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 243
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    goto :goto_3

    .line 239
    :cond_7
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_8
    :goto_3
    const/4 v0, 0x5

    .line 247
    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 249
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 254
    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    goto :goto_4

    .line 251
    :cond_9
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_a
    :goto_4
    const/4 v1, 0x6

    .line 257
    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_d

    .line 259
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 264
    invoke-virtual {p3, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 265
    invoke-virtual {p3, v3}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 267
    iget-object v0, p0, Lorg/apache/kerberos/kdc/TicketGrantingService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v0}, Lorg/apache/kerberos/service/KdcConfiguration;->isPostdateAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_5

    .line 269
    :cond_b
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_POLICY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 261
    :cond_c
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_d
    :goto_5
    const/16 v0, 0x1f

    .line 275
    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 277
    invoke-virtual {p2, v3}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 282
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 293
    invoke-virtual {p0, p3, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->echoTicket(Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 294
    invoke-virtual {p3, v3}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->clearFlag(I)V

    goto :goto_6

    .line 284
    :cond_e
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_TKT_NYV:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 279
    :cond_f
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_POLICY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_10
    :goto_6
    const/4 p2, 0x0

    .line 297
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result p2

    if-nez p2, :cond_11

    const/16 p2, 0x1b

    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 300
    :cond_11
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1
.end method

.method private processTimes(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 307
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    .line 309
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    const/16 v1, 0x1e

    .line 313
    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p3, v2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/kerberos/messages/value/KerberosTime;->greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {p0, p2, p3}, Lorg/apache/kerberos/kdc/TicketGrantingService;->echoTicket(Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 327
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 328
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v3

    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 329
    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto/16 :goto_1

    .line 322
    :cond_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_TKT_EXPIRED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 317
    :cond_1
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 333
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 335
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    sget-object v1, Lorg/apache/kerberos/messages/value/KerberosTime;->INFINITY:Lorg/apache/kerberos/messages/value/KerberosTime;

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    .line 349
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/kerberos/kdc/TicketGrantingService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v6}, Lorg/apache/kerberos/service/KdcConfiguration;->getMaximumTicketLifetime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 354
    invoke-virtual {p2, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    const/16 v3, 0x1b

    .line 356
    invoke-virtual {p1, v3}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/kerberos/messages/value/KerberosTime;->lessThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3, v2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {p1, v2}, Lorg/apache/kerberos/messages/KdcRequest;->setOption(I)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v3

    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 363
    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v1, v3, v4}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 369
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 373
    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->isZero()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    sget-object v1, Lorg/apache/kerberos/messages/value/KerberosTime;->INFINITY:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 382
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/kerberos/messages/KdcRequest;->getOption(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3, v2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 385
    invoke-virtual {p2, v2}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 392
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    .line 399
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_7
    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/kerberos/kdc/TicketGrantingService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v0}, Lorg/apache/kerberos/service/KdcConfiguration;->getMaximumRenewableLifetime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p3}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-virtual {p2, p1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    :cond_8
    return-void
.end method

.method private processTransited(Lorg/apache/kerberos/messages/components/EncTicketPartModifier;Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 0

    .line 455
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getTransitedEncoding()Lorg/apache/kerberos/messages/value/TransitedEncoding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setTransitedEncoding(Lorg/apache/kerberos/messages/value/TransitedEncoding;)V

    return-void
.end method

.method private verifyBodyChecksum(Lorg/apache/kerberos/messages/value/Checksum;Lorg/apache/kerberos/messages/KdcRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 141
    new-instance v0, Lorg/apache/kerberos/io/encoder/KdcReqBodyEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/KdcReqBodyEncoder;-><init>()V

    .line 145
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/kerberos/io/encoder/KdcReqBodyEncoder;->encode(Lorg/apache/kerberos/messages/KdcRequest;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 149
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x0

    .line 152
    :goto_0
    new-instance v0, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;

    invoke-direct {v0}, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;-><init>()V

    .line 153
    new-instance v1, Lorg/apache/kerberos/messages/value/Checksum;

    invoke-virtual {v0}, Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;->checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    move-result-object v2

    invoke-virtual {v0, p2}, Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;->calculateChecksum([B)[B

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/apache/kerberos/messages/value/Checksum;-><init>(Lorg/apache/kerberos/crypto/checksum/ChecksumType;[B)V

    .line 155
    invoke-virtual {v1, p1}, Lorg/apache/kerberos/messages/value/Checksum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_MODIFIED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 126
    :cond_1
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object p2, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_INAPP_CKSUM:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, p2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1
.end method


# virtual methods
.method public getReplyFor(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/TicketGrantReply;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getAuthHeader(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/ApplicationRequest;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/ApplicationRequest;->getTicket()Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1}, Lorg/apache/kerberos/kdc/TicketGrantingService;->verifyAuthHeader(Lorg/apache/kerberos/messages/ApplicationRequest;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/components/Authenticator;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->verifyTicket(Lorg/apache/kerberos/messages/components/Ticket;Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 84
    new-instance v2, Lorg/apache/kerberos/crypto/RandomKey;

    invoke-direct {v2}, Lorg/apache/kerberos/crypto/RandomKey;-><init>()V

    invoke-virtual {v2}, Lorg/apache/kerberos/crypto/RandomKey;->getNewSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEType()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getBestEncryptionType([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 88
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getNewTicket(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/components/Authenticator;)Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v3

    .line 90
    invoke-direct {p0, v1, v3, v2, p1}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getReply(Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/TicketGrantReply;

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/Authenticator;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/apache/kerberos/kdc/TicketGrantingService;->encryptReplyPart(Lorg/apache/kerberos/messages/TicketGrantReply;Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/kerberos/kdc/TicketGrantingService;->encryptReplyPart(Lorg/apache/kerberos/messages/TicketGrantReply;Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    :goto_0
    return-object p1
.end method
