.class public Lorg/apache/kerberos/jaas/Krb5LoginConfiguration;
.super Ljavax/security/auth/login/Configuration;
.source "Krb5LoginConfiguration.java"


# static fields
.field private static configList:[Ljavax/security/auth/login/AppConfigurationEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljavax/security/auth/login/AppConfigurationEntry;

    sput-object v0, Lorg/apache/kerberos/jaas/Krb5LoginConfiguration;->configList:[Ljavax/security/auth/login/AppConfigurationEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljavax/security/auth/login/Configuration;-><init>()V

    .line 34
    sget-object v0, Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUIRED:Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    .line 35
    sget-object v1, Lorg/apache/kerberos/jaas/Krb5LoginConfiguration;->configList:[Ljavax/security/auth/login/AppConfigurationEntry;

    new-instance v2, Ljavax/security/auth/login/AppConfigurationEntry;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "com.sun.security.auth.module.Krb5LoginModule"

    invoke-direct {v2, v4, v0, v3}, Ljavax/security/auth/login/AppConfigurationEntry;-><init>(Ljava/lang/String;Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;Ljava/util/Map;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-void
.end method


# virtual methods
.method public getAppConfigurationEntry(Ljava/lang/String;)[Ljavax/security/auth/login/AppConfigurationEntry;
    .locals 0

    .line 44
    sget-object p1, Lorg/apache/kerberos/jaas/Krb5LoginConfiguration;->configList:[Ljavax/security/auth/login/AppConfigurationEntry;

    return-object p1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
