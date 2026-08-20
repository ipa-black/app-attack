.class Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "BogusTrustManagerFactory.java"


# static fields
.field static final X509:Ljavax/net/ssl/X509TrustManager;

.field static final X509_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory$1;

    invoke-direct {v0}, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory$1;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;->X509:Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x1

    .line 61
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    return-void
.end method
