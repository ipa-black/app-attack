.class public interface abstract Lorg/apache/ldap/common/schema/NameForm;
.super Ljava/lang/Object;
.source "NameForm.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getMaytUse()[Lorg/apache/ldap/common/schema/AttributeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getMustUse()[Lorg/apache/ldap/common/schema/AttributeType;
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
