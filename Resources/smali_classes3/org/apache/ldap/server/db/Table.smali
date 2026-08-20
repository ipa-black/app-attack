.class public interface abstract Lorg/apache/ldap/server/db/Table;
.super Ljava/lang/Object;
.source "Table.java"


# virtual methods
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

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getComparator()Lorg/apache/ldap/server/db/TupleComparator;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRenderer()Lorg/apache/ldap/server/db/TupleRenderer;
.end method

.method public abstract has(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract has(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract has(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract has(Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract isDupsEnabled()Z
.end method

.method public abstract isSortedDupsEnabled()Z
.end method

.method public abstract listTuples()Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listTuples(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listTuples(Ljava/lang/Object;Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listTuples(Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listValues(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setRenderer(Lorg/apache/ldap/server/db/TupleRenderer;)V
.end method
