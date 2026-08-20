.class public interface abstract Lorg/apache/ldap/common/name/NameComponentNormalizer;
.super Ljava/lang/Object;
.source "NameComponentNormalizer.java"


# virtual methods
.method public abstract normalizeByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract normalizeByOid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
