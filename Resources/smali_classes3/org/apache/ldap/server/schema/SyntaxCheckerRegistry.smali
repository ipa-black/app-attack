.class public interface abstract Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;
.super Ljava/lang/Object;
.source "SyntaxCheckerRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasSyntaxChecker(Ljava/lang/String;)Z
.end method

.method public abstract lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/SyntaxChecker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/SyntaxChecker;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
