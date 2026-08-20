.class public interface abstract Lorg/apache/ldap/server/db/Index;
.super Ljava/lang/Object;
.source "Index.java"


# virtual methods
.method public abstract add(Ljava/lang/Object;Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract add(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract add(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)V
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

.method public abstract count(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract count(Ljava/lang/Object;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract drop(Ljava/lang/Object;Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract drop(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract drop(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract drop(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAttribute()Lorg/apache/ldap/common/schema/AttributeType;
.end method

.method public abstract getNormalized(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasValue(Ljava/lang/Object;Ljava/math/BigInteger;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasValue(Lorg/apache/regexp/RE;Ljava/math/BigInteger;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listIndices(Lorg/apache/regexp/RE;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listIndices(Lorg/apache/regexp/RE;Ljava/lang/String;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listReverseIndices(Ljava/math/BigInteger;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;
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
