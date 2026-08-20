.class public interface abstract Lorg/apache/ldap/common/schema/MatchingRuleUse;
.super Ljava/lang/Object;
.source "MatchingRuleUse.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getApplicableAttributes()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getMatchingRule()Lorg/apache/ldap/common/schema/MatchingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
