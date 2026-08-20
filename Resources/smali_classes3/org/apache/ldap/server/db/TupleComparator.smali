.class public interface abstract Lorg/apache/ldap/server/db/TupleComparator;
.super Ljava/lang/Object;
.source "TupleComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract compareKey(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract compareValue(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract getKeyComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
.end method

.method public abstract getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
.end method
