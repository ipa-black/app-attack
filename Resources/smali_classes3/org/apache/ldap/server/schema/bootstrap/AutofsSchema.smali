.class public Lorg/apache/ldap/server/schema/bootstrap/AutofsSchema;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;
.source "AutofsSchema.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    const-string v0, "autofs"

    const-string v1, "org.apache.ldap.server.schema.bootstrap"

    const-string v2, "uid=admin,ou=system"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "core"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "cosine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapSchema;->DEFAULT_DEPS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AutofsSchema;->setDependencies([Ljava/lang/String;)V

    return-void
.end method
