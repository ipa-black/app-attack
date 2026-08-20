.class public abstract Lorg/apache/ldap/common/message/spi/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# static fields
.field public static final BERLIB_PROPFILE:Ljava/lang/String; = "berlib.properties"

.field public static final BERLIB_PROVIDER:Ljava/lang/String; = "asn.1.berlib.provider"

.field public static final DEFAULT_PROVIDER:Ljava/lang/String; = "org.apache.ldap.common.berlib.asn1.SnickersProvider"

.field public static final PROVIDER_MONITOR_KEY:Ljava/lang/String; = "asn.1.berlib.provider.monitor"

.field public static final USING_DEFAULTS_MSG:Ljava/lang/String;

.field private static monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;


# instance fields
.field private final name:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Could not find the ASN.1 berlib provider properties file: berlib.properties.\nFile is not present on the classpath or in $JAVA_HOME/lib:\n\tjava.home = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n\tjava.class.path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/message/spi/Provider;->USING_DEFAULTS_MSG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    sput-object v0, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    .line 85
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/message/spi/Provider;->findMonitor(Ljava/util/Properties;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/apache/ldap/common/message/spi/Provider;->name:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lorg/apache/ldap/common/message/spi/Provider;->vendor:Ljava/lang/String;

    return-void
.end method

.method private static findMonitor(Ljava/util/Properties;)V
    .locals 3

    .line 95
    const-string v0, "provider monitor class "

    const-string v1, "asn.1.berlib.provider.monitor"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    sput-object v1, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, " failed during instantiation"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, " does not expose a public default constructor"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :catch_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    sget-object p0, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    if-nez p0, :cond_1

    .line 127
    sget-object p0, Lorg/apache/ldap/common/message/spi/ProviderMonitor;->NOOP_MONITOR:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    sput-object p0, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    :cond_1
    return-void
.end method

.method public static getEnvironment()Ljava/util/Properties;
    .locals 9

    .line 326
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Lorg/apache/ldap/common/message/spi/Provider$1;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/spi/Provider$1;-><init>()V

    .line 336
    invoke-static {v0, v1}, Lorg/apache/ldap/common/util/StringTools;->getPaths(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "Failed to load "

    const-string v4, "berlib.properties"

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    .line 342
    new-instance v2, Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 351
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 361
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 355
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 366
    :goto_1
    invoke-static {v0}, Lorg/apache/ldap/common/message/spi/Provider;->findMonitor(Ljava/util/Properties;)V

    .line 367
    sget-object v1, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/ldap/common/message/spi/ProviderMonitor;->propsFound(Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 374
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "lib"

    invoke-direct {v1, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v2, Ljava/io/File;

    const-string v6, "user.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    new-instance v6, Ljava/io/File;

    const-string v7, "user.dir"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    .line 381
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 390
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 399
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 409
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v1

    .line 403
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 414
    :goto_3
    invoke-static {v0}, Lorg/apache/ldap/common/message/spi/Provider;->findMonitor(Ljava/util/Properties;)V

    .line 415
    sget-object v1, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/ldap/common/message/spi/ProviderMonitor;->propsFound(Ljava/lang/String;Ljava/util/Properties;)V

    .line 421
    :cond_4
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "asn.1.berlib.provider"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 424
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 425
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    if-nez v0, :cond_6

    .line 432
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 433
    const-string v1, "org.apache.ldap.common.berlib.asn1.SnickersProvider"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    sget-object v1, Lorg/apache/ldap/common/message/spi/Provider;->monitor:Lorg/apache/ldap/common/message/spi/ProviderMonitor;

    sget-object v2, Lorg/apache/ldap/common/message/spi/Provider;->USING_DEFAULTS_MSG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/ldap/common/message/spi/ProviderMonitor;->usingDefaults(Ljava/lang/String;Ljava/util/Properties;)V

    :cond_6
    return-object v0
.end method

.method public static getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 236
    invoke-static {}, Lorg/apache/ldap/common/message/spi/Provider;->getEnvironment()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/message/spi/Provider;->getProvider(Ljava/util/Hashtable;)Lorg/apache/ldap/common/message/spi/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static getProvider(Ljava/util/Hashtable;)Lorg/apache/ldap/common/message/spi/Provider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 252
    const-string v0, "Count not invoke the Provider\'s factory method: "

    .line 253
    const-string v1, "asn.1.berlib.provider"

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 269
    const-string v3, "getProvider"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/message/spi/Provider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 298
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Call to Provider\'s factory method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v3, ".getProvider() threw the following exception:\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 303
    throw v2

    :catch_1
    move-exception v2

    .line 289
    new-instance v3, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ".getProvider() - it does seem to be a public method!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 294
    throw v3

    :catch_2
    move-exception v2

    .line 281
    new-instance v3, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ".getProvider() - it may not exist!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 285
    throw v3

    :catch_3
    move-exception v0

    .line 274
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Count not find the Provider class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 277
    throw v2

    .line 260
    :cond_0
    new-instance p0, Lorg/apache/ldap/common/message/spi/ProviderException;

    const-string v0, "Could not instantiate provider - environment does not specify asn.1.berlib.provider property!"

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getDecoder()Lorg/apache/ldap/common/message/spi/ProviderDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method

.method public abstract getEncoder()Lorg/apache/ldap/common/message/spi/ProviderEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/ldap/common/message/spi/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTransformer()Lorg/apache/ldap/common/message/spi/TransformerSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/ldap/common/message/spi/Provider;->vendor:Ljava/lang/String;

    return-object v0
.end method
