.class public interface abstract Lorg/apache/ldap/server/db/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field public static final ALIAS_ATTRIBUTE:Ljava/lang/String; = "aliasedObjectName"

.field public static final ALIAS_OBJECT:Ljava/lang/String; = "alias"


# virtual methods
.method public abstract add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract addIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract count()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAliasIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getChildCount(Ljava/math/BigInteger;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEntryUpdn(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getExistanceIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getHierarchyIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getIndices(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNdnIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getOneAliasIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getParentId(Ljava/lang/String;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getParentId(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSubAliasIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getSuffix()Ljavax/naming/Name;
.end method

.method public abstract getSuffixEntry()Ljavax/naming/directory/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSystemIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/server/db/IndexNotFoundException;
        }
    .end annotation
.end method

.method public abstract getSystemIndices()Ljava/util/Iterator;
.end method

.method public abstract getUpdnIndex()Lorg/apache/ldap/server/db/Index;
.end method

.method public abstract getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/server/db/IndexNotFoundException;
        }
    .end annotation
.end method

.method public abstract getUserIndices()Ljava/util/Iterator;
.end method

.method public abstract hasSystemIndexOn(Ljava/lang/String;)Z
.end method

.method public abstract hasUserIndexOn(Ljava/lang/String;)Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract list(Ljava/math/BigInteger;)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract modifyRdn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setExistanceIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setHierarchyIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setNdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setOneAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setSubAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setUpdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
