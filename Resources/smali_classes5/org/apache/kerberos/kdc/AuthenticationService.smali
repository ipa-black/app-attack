.class public Lorg/apache/kerberos/kdc/AuthenticationService;
.super Lorg/apache/kerberos/service/KerberosService;
.source "AuthenticationService.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/kerberos/sam/TimestampChecker;

    invoke-direct {v0}, Lorg/apache/kerberos/sam/TimestampChecker;-><init>()V

    invoke-static {v0}, Lorg/apache/kerberos/sam/SamSubsystem;->setIntegrityChecker(Lorg/apache/kerberos/sam/KeyIntegrityChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/kerberos/service/KerberosService;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    .line 74
    invoke-virtual {p1}, Lorg/apache/kerberos/service/KdcConfiguration;->getProperties()Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/kerberos/sam/SamSubsystem;->setEnvironment(Ljava/util/Hashtable;)V

    return-void
.end method

.method private encryptReplyPart(Lorg/apache/kerberos/messages/AuthenticationReply;Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 2

    .line 389
    new-instance v0, Lorg/apache/kerberos/io/encoder/EncAsRepPartEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/EncAsRepPartEncoder;-><init>()V

    .line 392
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/encoder/EncAsRepPartEncoder;->encode(Lorg/apache/kerberos/messages/KdcReply;)[B

    move-result-object v0

    .line 394
    invoke-static {p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v1

    .line 396
    invoke-virtual {v1, p2, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getEncryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;[B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p2

    .line 398
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/AuthenticationReply;->setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private encryptTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 369
    new-instance v0, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;-><init>()V

    .line 373
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/encoder/EncTicketPartEncoder;->encode(Lorg/apache/kerberos/messages/components/EncTicketPart;)[B

    move-result-object p1

    .line 375
    invoke-static {p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p2, p1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getEncryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;[B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private generateNewTicket(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/components/Ticket;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 244
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lorg/apache/kerberos/kdc/AuthenticationService;->getServerKey(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v2

    .line 248
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v3

    .line 250
    new-instance v4, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;

    invoke-direct {v4}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;-><init>()V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 257
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 262
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 267
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 276
    new-instance v5, Lorg/apache/kerberos/crypto/RandomKey;

    invoke-direct {v5}, Lorg/apache/kerberos/crypto/RandomKey;-><init>()V

    invoke-virtual {v5}, Lorg/apache/kerberos/crypto/RandomKey;->getNewSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    .line 277
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 278
    new-instance v5, Lorg/apache/kerberos/messages/value/TransitedEncoding;

    invoke-direct {v5}, Lorg/apache/kerberos/messages/value/TransitedEncoding;-><init>()V

    invoke-virtual {v4, v5}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setTransitedEncoding(Lorg/apache/kerberos/messages/value/TransitedEncoding;)V

    .line 280
    new-instance v5, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    .line 281
    invoke-virtual {v4, v5}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 286
    iget-object v6, v0, Lorg/apache/kerberos/kdc/AuthenticationService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v6}, Lorg/apache/kerberos/service/KdcConfiguration;->isPostdateAllowed()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x7

    .line 288
    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 287
    :cond_3
    new-instance v1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_POLICY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {v1, v2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw v1

    .line 293
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const-wide v10, 0x7fffffffffffffffL

    if-nez v6, :cond_5

    move-wide v6, v10

    goto :goto_1

    .line 296
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v6

    .line 303
    :goto_1
    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v12

    iget-object v5, v0, Lorg/apache/kerberos/kdc/AuthenticationService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v5}, Lorg/apache/kerberos/service/KdcConfiguration;->getMaximumTicketLifetime()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 304
    new-instance v7, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v7, v5, v6}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    .line 305
    invoke-virtual {v4, v7}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    const/16 v6, 0x1b

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/kerberos/messages/value/KerberosTime;->greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 311
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->set(I)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v12

    goto :goto_2

    :cond_6
    move-wide v12, v8

    :goto_2
    cmp-long v5, v12, v8

    if-nez v5, :cond_7

    goto :goto_3

    .line 329
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v10

    .line 331
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 333
    invoke-virtual {v4, v6}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlag(I)V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    if-nez v5, :cond_8

    .line 342
    new-instance v5, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    .line 345
    :cond_8
    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->getTime()J

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/kerberos/kdc/AuthenticationService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v7}, Lorg/apache/kerberos/service/KdcConfiguration;->getMaximumRenewableLifetime()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 347
    new-instance v7, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v7, v5, v6}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 350
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 352
    invoke-virtual/range {p1 .. p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    .line 355
    :cond_a
    invoke-virtual {v4}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->getEncTicketPart()Lorg/apache/kerberos/messages/components/EncTicketPart;

    move-result-object v4

    .line 357
    invoke-direct {v0, v4, v2}, Lorg/apache/kerberos/kdc/AuthenticationService;->encryptTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v2

    .line 359
    new-instance v5, Lorg/apache/kerberos/messages/components/Ticket;

    invoke-direct {v5, v3, v2}, Lorg/apache/kerberos/messages/components/Ticket;-><init>(Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V

    .line 360
    invoke-virtual {v5, v4}, Lorg/apache/kerberos/messages/components/Ticket;->setEncTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;)V

    .line 362
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Ticket will be issued for access to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v5

    .line 273
    :cond_b
    new-instance v1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v2, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_BADOPTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {v1, v2}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw v1
.end method

.method private getAuthenticationReply(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/AuthenticationReply;
    .locals 2

    .line 408
    new-instance v0, Lorg/apache/kerberos/messages/AuthenticationReply;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/AuthenticationReply;-><init>()V

    .line 410
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 411
    invoke-virtual {v0, p2}, Lorg/apache/kerberos/messages/AuthenticationReply;->setTicket(Lorg/apache/kerberos/messages/components/Ticket;)V

    .line 412
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    .line 415
    new-instance v1, Lorg/apache/kerberos/messages/value/LastRequest;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/LastRequest;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setLastRequest(Lorg/apache/kerberos/messages/value/LastRequest;)V

    .line 418
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getNonce()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setNonce(I)V

    .line 420
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V

    .line 421
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 422
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 423
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 425
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    .line 430
    :cond_0
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 431
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/components/Ticket;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/AuthenticationReply;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    return-object v0
.end method

.method private preparePreAuthenticationError()[B
    .locals 7

    const/4 v0, 0x2

    .line 201
    new-array v0, v0, [Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    .line 203
    new-instance v1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;-><init>()V

    .line 204
    sget-object v2, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENC_TIMESTAMP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    invoke-virtual {v1, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataType(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;)V

    const/4 v2, 0x0

    .line 205
    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataValue([B)V

    .line 207
    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->getPreAuthenticationData()Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 209
    new-array v3, v1, [Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;

    .line 210
    new-instance v4, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;

    sget-object v5, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V

    aput-object v4, v3, v2

    .line 216
    :try_start_0
    invoke-static {v3}, Lorg/apache/kerberos/io/encoder/EncryptionTypeInfoEncoder;->encode([Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    new-instance v3, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;

    invoke-direct {v3}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;-><init>()V

    .line 225
    sget-object v4, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENCTYPE_INFO:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    invoke-virtual {v3, v4}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataType(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;)V

    .line 226
    invoke-virtual {v3, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataValue([B)V

    .line 228
    invoke-virtual {v3}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->getPreAuthenticationData()Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 232
    :try_start_1
    invoke-static {v0}, Lorg/apache/kerberos/io/encoder/PreAuthenticationDataEncoder;->encode([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v6

    :catch_1
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v6
.end method

.method private verifyPreAuthentication(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lorg/apache/kerberos/kdc/AuthenticationService;->getEntryForClient(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/kerberos/store/PrincipalStoreEntry;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_6

    .line 101
    invoke-virtual {v1}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getEncryptionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v2, p0, Lorg/apache/kerberos/kdc/AuthenticationService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v2}, Lorg/apache/kerberos/service/KdcConfiguration;->isPaEncTimestampRequired()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 110
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getPreAuthData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 119
    :goto_0
    array-length v2, p1

    if-ge v3, v2, :cond_1

    .line 121
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v2

    sget-object v5, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENC_TIMESTAMP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode([B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v2

    .line 127
    invoke-static {v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v1, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B

    move-result-object v2

    .line 131
    new-instance v4, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;

    invoke-direct {v4}, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;-><init>()V

    .line 132
    invoke-virtual {v4, v2}, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;->decode([B)Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_1

    .line 144
    :catch_0
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 140
    :catch_1
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 136
    :catch_2
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BAD_INTEGRITY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    .line 154
    invoke-virtual {v4}, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->getTimeStamp()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/kerberos/kdc/AuthenticationService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v2}, Lorg/apache/kerberos/service/KdcConfiguration;->getClockSkew()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/kerberos/messages/value/KerberosTime;->isInClockSkew(J)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 156
    :cond_2
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_PREAUTH_FAILED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 151
    :cond_3
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_PREAUTH_REQUIRED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p0}, Lorg/apache/kerberos/kdc/AuthenticationService;->preparePreAuthenticationError()[B

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;[B)V

    throw p1

    .line 114
    :cond_4
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_PREAUTH_REQUIRED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p0}, Lorg/apache/kerberos/kdc/AuthenticationService;->preparePreAuthenticationError()[B

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;[B)V

    throw p1

    .line 105
    :cond_5
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_NULL_KEY:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p1

    .line 170
    :cond_6
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getPreAuthData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 172
    array-length v2, p1

    if-eqz v2, :cond_a

    .line 179
    :goto_2
    :try_start_1
    array-length v2, p1

    if-ge v3, v2, :cond_8

    .line 181
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v2

    sget-object v5, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENC_TIMESTAMP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/kerberos/sam/SamSubsystem;->verify(Lorg/apache/kerberos/store/PrincipalStoreEntry;[B)Ljavax/security/auth/kerberos/KerberosKey;

    move-result-object v2

    .line 184
    new-instance v4, Lorg/apache/kerberos/messages/value/EncryptionKey;

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosKey;->getKeyType()I

    move-result v5

    invoke-static {v5}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/kerberos/messages/value/EncryptionKey;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V
    :try_end_1
    .catch Lorg/apache/kerberos/sam/SamException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object v1, v4

    .line 194
    :cond_9
    :goto_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Ticket will be issued to client "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    :catch_3
    move-exception p1

    .line 190
    new-instance v0, Lorg/apache/kerberos/exceptions/KerberosException;

    const/16 v1, 0x3c

    invoke-virtual {p1}, Lorg/apache/kerberos/sam/SamException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 174
    :cond_a
    new-instance p1, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_PREAUTH_REQUIRED:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p0}, Lorg/apache/kerberos/kdc/AuthenticationService;->preparePreAuthenticationError()[B

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;[B)V

    throw p1
.end method


# virtual methods
.method public getReplyFor(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/AuthenticationReply;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/kerberos/kdc/AuthenticationService;->verifyPreAuthentication(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/kerberos/kdc/AuthenticationService;->generateNewTicket(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    .line 83
    invoke-direct {p0, p1, v1}, Lorg/apache/kerberos/kdc/AuthenticationService;->getAuthenticationReply(Lorg/apache/kerberos/messages/KdcRequest;Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/kerberos/messages/AuthenticationReply;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/apache/kerberos/kdc/AuthenticationService;->encryptReplyPart(Lorg/apache/kerberos/messages/AuthenticationReply;Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    return-object p1
.end method
