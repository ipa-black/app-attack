.class public interface abstract Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;
.super Ljava/lang/Object;
.source "BootstrapSchema.java"


# virtual methods
.method public abstract getBaseClassName()Ljava/lang/String;
.end method

.method public abstract getDefaultBaseClassName()Ljava/lang/String;
.end method

.method public abstract getDependencies()[Ljava/lang/String;
.end method

.method public abstract getFullClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
.end method

.method public abstract getFullDefaultBaseClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
.end method

.method public abstract getOwner()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSchemaName()Ljava/lang/String;
.end method

.method public abstract getUnqualifiedClassName()Ljava/lang/String;
.end method

.method public abstract getUnqualifiedClassName(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)Ljava/lang/String;
.end method
