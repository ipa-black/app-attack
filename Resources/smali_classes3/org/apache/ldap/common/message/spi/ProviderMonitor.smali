.class public interface abstract Lorg/apache/ldap/common/message/spi/ProviderMonitor;
.super Ljava/lang/Object;
.source "ProviderMonitor.java"


# static fields
.field public static final NOOP_MONITOR:Lorg/apache/ldap/common/message/spi/ProviderMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/ldap/common/message/spi/ProviderMonitor$1;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/spi/ProviderMonitor$1;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/message/spi/ProviderMonitor;->NOOP_MONITOR:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    return-void
.end method


# virtual methods
.method public abstract propsFound(Ljava/lang/String;Ljava/util/Properties;)V
.end method

.method public abstract usingDefaults(Ljava/lang/String;Ljava/util/Properties;)V
.end method
