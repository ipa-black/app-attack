.class public interface abstract Lorg/apache/ldap/server/db/MasterTable;
.super Ljava/lang/Object;
.source "MasterTable.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Table;


# static fields
.field public static final DBF:Ljava/lang/String; = "master"

.field public static final SEQPROP_KEY:Ljava/lang/String; = "__sequence__"


# virtual methods
.method public abstract delete(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getCurrentId()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNextId()Ljava/math/BigInteger;
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

.method public abstract put(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
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
