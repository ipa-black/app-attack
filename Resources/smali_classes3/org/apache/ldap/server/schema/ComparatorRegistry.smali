.class public interface abstract Lorg/apache/ldap/server/schema/ComparatorRegistry;
.super Ljava/lang/Object;
.source "ComparatorRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasComparator(Ljava/lang/String;)Z
.end method

.method public abstract lookup(Ljava/lang/String;)Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
