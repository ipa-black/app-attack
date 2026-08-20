.class public Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;
.super Ljava/lang/Object;
.source "AcceptAllSyntaxChecker.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SyntaxChecker;


# instance fields
.field private final oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;->oid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public assertSyntax(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    return-void
.end method

.method public getSyntaxOid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSyntax(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
