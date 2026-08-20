.class public interface abstract Lorg/apache/ldap/common/ldif/LdifParser;
.super Ljava/lang/Object;
.source "LdifParser.java"


# virtual methods
.method public abstract parse(Ljava/lang/String;)Lorg/apache/ldap/common/ldif/LdifEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract parse(Ljavax/naming/directory/Attributes;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
