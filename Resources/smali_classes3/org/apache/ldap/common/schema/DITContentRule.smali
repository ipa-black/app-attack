.class public interface abstract Lorg/apache/ldap/common/schema/DITContentRule;
.super Ljava/lang/Object;
.source "DITContentRule.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getAuxObjectClasses()[Lorg/apache/ldap/common/schema/ObjectClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getMayNames()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getMustNames()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNotNames()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getObjectClass()Lorg/apache/ldap/common/schema/ObjectClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
