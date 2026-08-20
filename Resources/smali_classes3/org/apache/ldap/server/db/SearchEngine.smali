.class public interface abstract Lorg/apache/ldap/server/db/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# static fields
.field public static final ALIASMODE_KEY:Ljava/lang/String; = "java.naming.ldap.derefAliases"

.field public static final ALWAYS:Ljava/lang/String; = "always"

.field public static final FINDING:Ljava/lang/String; = "finding"

.field public static final NEVER:Ljava/lang/String; = "never"

.field public static final SEARCHING:Ljava/lang/String; = "searching"


# virtual methods
.method public abstract evaluate(Lorg/apache/ldap/common/filter/ExprNode;Ljava/math/BigInteger;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getOptimizer()Lorg/apache/ldap/server/db/Optimizer;
.end method

.method public abstract search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
