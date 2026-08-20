.class public interface abstract Lorg/apache/ldap/common/schema/AttributeType;
.super Ljava/lang/Object;
.source "AttributeType.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getEquality()Lorg/apache/ldap/common/schema/MatchingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getLength()I
.end method

.method public abstract getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSuperior()Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSyntax()Lorg/apache/ldap/common/schema/Syntax;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getUsage()Lorg/apache/ldap/common/schema/UsageEnum;
.end method

.method public abstract isCanUserModify()Z
.end method

.method public abstract isCollective()Z
.end method

.method public abstract isSingleValue()Z
.end method
