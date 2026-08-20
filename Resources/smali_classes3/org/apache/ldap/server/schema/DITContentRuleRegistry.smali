.class public interface abstract Lorg/apache/ldap/server/schema/DITContentRuleRegistry;
.super Ljava/lang/Object;
.source "DITContentRuleRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasDITContentRule(Ljava/lang/String;)Z
.end method

.method public abstract list()Ljava/util/Iterator;
.end method

.method public abstract lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/DITContentRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lorg/apache/ldap/common/schema/DITContentRule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
