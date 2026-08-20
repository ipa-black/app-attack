.class public abstract Lorg/apache/ldap/server/schema/AbstractSyntaxChecker;
.super Ljava/lang/Object;
.source "AbstractSyntaxChecker.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SyntaxChecker;


# instance fields
.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/ldap/server/schema/AbstractSyntaxChecker;->oid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSyntaxOid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/ldap/server/schema/AbstractSyntaxChecker;->oid:Ljava/lang/String;

    return-object v0
.end method
