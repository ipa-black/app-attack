.class public interface abstract Lorg/apache/ldap/common/schema/SyntaxChecker;
.super Ljava/lang/Object;
.source "SyntaxChecker.java"


# virtual methods
.method public abstract assertSyntax(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSyntaxOid()Ljava/lang/String;
.end method

.method public abstract isValidSyntax(Ljava/lang/Object;)Z
.end method
