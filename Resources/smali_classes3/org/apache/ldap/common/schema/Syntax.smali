.class public interface abstract Lorg/apache/ldap/common/schema/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# virtual methods
.method public abstract getSyntaxChecker()Lorg/apache/ldap/common/schema/SyntaxChecker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract isHumanReadible()Z
.end method
