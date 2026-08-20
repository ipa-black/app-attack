.class public Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;
.super Ljava/lang/Object;
.source "BogusSSLContextFactory.java"


# static fields
.field private static final BOGUS_KEYSTORE:Ljava/lang/String; = "bogus.cert"

.field private static final BOGUS_PW:[C

.field private static final PROTOCOL:Ljava/lang/String; = "TLS"

.field static synthetic class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

.field private static clientInstance:Ljavax/net/ssl/SSLContext;

.field private static serverInstance:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 59
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->BOGUS_PW:[C

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->serverInstance:Ljavax/net/ssl/SSLContext;

    .line 64
    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->clientInstance:Ljavax/net/ssl/SSLContext;

    return-void

    :array_0
    .array-data 2
        0x62s
        0x6fs
        0x67s
        0x75s
        0x73s
        0x70s
        0x77s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static createBougusClientSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 157
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 158
    sget-object v2, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method private static createBougusServerSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    :try_start_0
    sget-object v2, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory"

    invoke-static {v2}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    :cond_0
    const-string v3, "bogus.cert"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    sget-object v3, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->BOGUS_PW:[C

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 134
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :catch_0
    :cond_1
    const-string v2, "SunX509"

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 144
    sget-object v3, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->BOGUS_PW:[C

    invoke-virtual {v2, v0, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 147
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 148
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    .line 134
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :catch_1
    :cond_2
    throw v0
.end method

.method public static getInstance(Z)Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Can\'t create Server SSLContext:"

    if-eqz p0, :cond_3

    .line 79
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->serverInstance:Ljavax/net/ssl/SSLContext;

    if-nez p0, :cond_2

    .line 81
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory"

    invoke-static {p0}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    :cond_0
    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v1, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->serverInstance:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 87
    :try_start_1
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->createBougusServerSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->serverInstance:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    :try_start_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 97
    :cond_2
    :goto_1
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->serverInstance:Ljavax/net/ssl/SSLContext;

    goto :goto_3

    .line 101
    :cond_3
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->clientInstance:Ljavax/net/ssl/SSLContext;

    if-nez p0, :cond_6

    .line 103
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    if-nez p0, :cond_4

    const-string p0, "org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory"

    invoke-static {p0}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory:Ljava/lang/Class;

    :cond_4
    monitor-enter p0

    .line 105
    :try_start_3
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->clientInstance:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_5

    .line 107
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->createBougusClientSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->clientInstance:Ljavax/net/ssl/SSLContext;

    .line 109
    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 111
    :cond_6
    :goto_2
    sget-object p0, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->clientInstance:Ljavax/net/ssl/SSLContext;

    :goto_3
    return-object p0
.end method
