.class public interface abstract Lorg/apache/ldap/common/schema/ObjectClass;
.super Ljava/lang/Object;
.source "ObjectClass.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getMayList()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getMustList()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;
.end method
