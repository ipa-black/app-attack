.class public Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;
.super Ljava/lang/Object;
.source "AbstractBootstrapSchema.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;


# static fields
.field protected static final DEFAULT_DEPS:[Ljava/lang/String;

.field private static final DEFAULT_OWNER:Ljava/lang/String; = "uid=admin,ou=system"

.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "org.apache.ldap.server.schema.bootstrap"

.field private static final DEFAULT_SCHEMA_NAME:Ljava/lang/String; = "default"


# instance fields
.field private transient baseName:Ljava/lang/String;

.field private transient defaultBaseName:Ljava/lang/String;

.field private dependencies:[Ljava/lang/String;

.field private final owner:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final schemaName:Ljava/lang/String;

.field private transient schemaNameCapped:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sput-object v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->DEFAULT_DEPS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, p1, v0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 79
    const-string p1, "uid=admin,ou=system"

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->owner:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->owner:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    .line 88
    const-string p1, "default"

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaName:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_1
    iput-object p2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaName:Ljava/lang/String;

    .line 95
    :goto_1
    const-string p1, "org.apache.ldap.server.schema.bootstrap"

    if-nez p3, :cond_2

    .line 97
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_2
    iput-object p3, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->packageName:Ljava/lang/String;

    :goto_2
    if-nez p4, :cond_3

    .line 106
    sget-object p4, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->dependencies:[Ljava/lang/String;

    goto :goto_3

    .line 110
    :cond_3
    iput-object p4, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->dependencies:[Ljava/lang/String;

    .line 113
    :goto_3
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaNameCapped:Ljava/lang/String;

    .line 118
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 119
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x2e

    .line 120
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object p2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaNameCapped:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->defaultBaseName:Ljava/lang/String;

    .line 124
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 125
    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaNameCapped:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->baseName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseClassName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultBaseClassName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->defaultBaseName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDependencies()[Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->dependencies:[Ljava/lang/String;

    return-object v0
.end method

.method public getFullClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFullDefaultBaseClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->defaultBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOwner()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemaName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnqualifiedClassName()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaNameCapped:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnqualifiedClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->schemaNameCapped:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final setDependencies([Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->dependencies:[Ljava/lang/String;

    return-void
.end method
